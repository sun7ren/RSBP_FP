import pandas as pd
import numpy as np
import ast
import os
import sys
from sklearn.metrics import confusion_matrix, classification_report
import matplotlib.pyplot as plt
import seaborn as sns

# --- CONFIGURATION ---
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DATA_DIR = os.path.join(BASE_DIR, 'dataset')
EMBEDDINGS_PATH = os.path.join(DATA_DIR, 'RSBP_FP.csv')
CAREER_CSV_PATH = os.path.join(DATA_DIR, 'Career.csv')
CLASS_CSV_PATH = os.path.join(DATA_DIR, 'Class.csv')

# Add current directory to path to find logic module
sys.path.append(BASE_DIR)

# Try to import your existing Career Logic
try:
    from logic.recommender.careerRecommender import CareerRecommender
except ImportError:
    print("⚠️  Could not import CareerRecommender. Make sure you are running this from the 'backend' folder.")
    sys.exit(1)

# --- HELPERS ---
def parse_list(text):
    """Parses string lists like '[Python, SQL]' into actual lists."""
    if not isinstance(text, str) or not text: return []
    clean = text.replace('[', '').replace(']', '').replace("'", "")
    return [x.strip() for x in clean.split(',') if x.strip()]

def load_data():
    print("Loading data for analysis...")
    # Load Embeddings
    df_emb = pd.read_csv(EMBEDDINGS_PATH)
    df_emb['embedding'] = df_emb['embedding'].apply(lambda x: np.array(ast.literal_eval(x)))
    
    # Load Careers (Ground Truth)
    df_careers = pd.read_csv(CAREER_CSV_PATH)

    # Load Classes (To filter embeddings)
    df_classes_meta = pd.read_csv(CLASS_CSV_PATH)
    
    return df_emb, df_careers, df_classes_meta

def get_student_vector(df_emb, items):
    """Simulates a student vector by averaging embeddings of the input items (skills/classes)."""
    matched = df_emb[df_emb['name'].isin(items)]
    if matched.empty:
        return None
    vectors = np.stack(matched["embedding"].values)
    return vectors.mean(axis=0)

def recommend_classes(df_emb, df_classes_meta, vector, top_k=6):
    """Recommend classes using cosine similarity."""
    valid_class_names = df_classes_meta['name'].tolist()
    df_classes = df_emb[df_emb['name'].isin(valid_class_names)].copy()
    
    if df_classes.empty:
        return []
    
    class_vectors = np.stack(df_classes["embedding"].values)
    dot = np.dot(class_vectors, vector)
    norm_v = np.linalg.norm(vector)
    norm_c = np.linalg.norm(class_vectors, axis=1)
    
    sim = dot / (norm_v * norm_c + 1e-9)
    top_indices = np.argsort(sim)[::-1][:top_k]
    return df_classes.iloc[top_indices]['name'].tolist()

# --- CONFUSION MATRIX FOR CAREER RECOMMENDER ---
def create_career_confusion_matrix(df_emb, df_careers, career_rec, K=6):
    """
    Creates binary confusion matrix for career recommender.
    For each career, checks if it's in top K recommendations.
    """
    print(f"\n--- Career Recommender Confusion Matrix (K={K}) ---")
    
    y_true = []  # 1 if career should be recommended, 0 otherwise
    y_pred = []  # 1 if career is in top K, 0 otherwise
    
    career_names = []
    
    for _, row in df_careers.iterrows():
        target_career = row['name']
        career_names.append(target_career)
        
        # Build perfect student profile for this career
        skills = parse_list(row.get('required_skills', ''))
        classes = parse_list(row.get('recommended_classes', ''))
        profile_items = skills + classes
        
        if not profile_items:
            continue

        vector = get_student_vector(df_emb, profile_items)
        if vector is None:
            continue

        # Get recommendations
        recommendations_df = career_rec.recommend(vector, top_k=K)
        recommended_names = recommendations_df['name'].tolist()

        # True label: 1 (this is the correct career for this profile)
        y_true.append(1)
        
        # Predicted label: 1 if in top K, 0 otherwise
        y_pred.append(1 if target_career in recommended_names else 0)
    
    # Calculate confusion matrix
    cm = confusion_matrix(y_true, y_pred, labels=[0, 1])
    
    print(f"\nTested on {len(y_true)} careers. K={K}.")
    print(f"\nConfusion Matrix:")
    print(f"                 Predicted No (0)  Predicted Yes (1)")
    print(f"Actual No (0)    {cm[0,0]:<17} {cm[0,1]}")
    print(f"Actual Yes (1)   {cm[1,0]:<17} {cm[1,1]}")
    
    # Calculate metrics
    tn, fp, fn, tp = cm.ravel()
    
    sensitivity = tp / (tp + fn) if (tp + fn) > 0 else 0  # Recall
    specificity = tn / (tn + fp) if (tn + fp) > 0 else 0
    precision = tp / (tp + fp) if (tp + fp) > 0 else 0
    accuracy = (tp + tn) / (tp + tn + fp + fn) if (tp + tn + fp + fn) > 0 else 0
    
    print(f"\nMetrics:")
    print(f"✅ Accuracy: {accuracy:.4f}")
    print(f"✅ Precision: {precision:.4f}")
    print(f"✅ Recall: {sensitivity:.4f}")
    print(f"✅ Specificity: {specificity:.4f}")
    
    # Classification report
    # print(f"\nClassification Report:")
    # print(classification_report(y_true, y_pred, target_names=['Not Recommended', 'Recommended'], zero_division=0))
    
    # Plot confusion matrix
    plt.figure(figsize=(8, 6))
    sns.heatmap(cm, annot=True, fmt='d', cmap='Blues', 
                xticklabels=['Not Recommended', 'Recommended'],
                yticklabels=['Not Recommended', 'Recommended'])
    plt.title(f'Career Recommender Confusion Matrix (K={K})')
    plt.ylabel('Actual')
    plt.xlabel('Predicted')
    plt.tight_layout()
    plt.savefig('career_confusion_matrix.png', dpi=100)
    print("\n✅ Confusion matrix saved as 'career_confusion_matrix.png'")
    plt.close()
    
    return cm, y_true, y_pred

# --- CONFUSION MATRIX FOR CLASS RECOMMENDER ---
def create_class_confusion_matrix(df_emb, df_classes_meta, K=6):
    """
    Creates binary confusion matrix for class recommender.
    For each class-skill pair, checks if recommended class teaches that skill.
    """
    print(f"\n--- Class Recommender Confusion Matrix (K={K}) ---")
    
    y_true = []
    y_pred = []
    
    # For each class, check if it's recommended when given its own skills
    for _, class_row in df_classes_meta.iterrows():
        class_name = class_row['name']
        teaches_skills_raw = class_row.get('teaches_skills', '')
        teaches_skills = parse_list(teaches_skills_raw)
        
        if not teaches_skills:
            continue
        
        # For each skill this class teaches
        for skill in teaches_skills:
            # Get student vector from that skill
            vector = get_student_vector(df_emb, [skill])
            if vector is None:
                continue
            
            # Get class recommendations
            recs = recommend_classes(df_emb, df_classes_meta, vector, top_k=K)
            
            # True label: 1 (this class should be recommended for this skill)
            y_true.append(1)
            
            # Predicted label: 1 if this class is in recommendations
            y_pred.append(1 if class_name in recs else 0)
    
    # Calculate confusion matrix
    cm = confusion_matrix(y_true, y_pred, labels=[0, 1])
    
    print(f"\nTested on {len(y_true)} class-skill pairs. K={K}.")
    print(f"\nConfusion Matrix:")
    print(f"                 Predicted No (0)  Predicted Yes (1)")
    print(f"Actual No (0)    {cm[0,0]:<17} {cm[0,1]}")
    print(f"Actual Yes (1)   {cm[1,0]:<17} {cm[1,1]}")
    
    # Calculate metrics
    tn, fp, fn, tp = cm.ravel()
    
    sensitivity = tp / (tp + fn) if (tp + fn) > 0 else 0
    specificity = tn / (tn + fp) if (tn + fp) > 0 else 0
    precision = tp / (tp + fp) if (tp + fp) > 0 else 0
    accuracy = (tp + tn) / (tp + tn + fp + fn) if (tp + tn + fp + fn) > 0 else 0
    
    print(f"\nMetrics:")
    print(f"✅ Accuracy: {accuracy:.4f}")
    print(f"✅ Precision: {precision:.4f}")
    print(f"✅ Recall: {sensitivity:.4f}")
    print(f"✅ Specificity: {specificity:.4f}")
    
    # Classification report
    # print(f"\nClassification Report:")
    # print(classification_report(y_true, y_pred, target_names=['Not Recommended', 'Recommended'], zero_division=0))
    
    # Plot confusion matrix
    plt.figure(figsize=(8, 6))
    sns.heatmap(cm, annot=True, fmt='d', cmap='Greens',
                xticklabels=['Not Recommended', 'Recommended'],
                yticklabels=['Not Recommended', 'Recommended'])
    plt.title(f'Class Recommender Confusion Matrix (K={K})')
    plt.ylabel('Actual')
    plt.xlabel('Predicted')
    plt.tight_layout()
    plt.savefig('class_confusion_matrix.png', dpi=100)
    print("\n✅ Confusion matrix saved as 'class_confusion_matrix.png'")
    plt.close()
    
    return cm, y_true, y_pred

# --- MAIN ---
if __name__ == "__main__":
    df_emb, df_careers, df_classes_meta = load_data()
    
    # Initialize recommenders
    print("Initializing Recommender Logic...")
    career_rec = CareerRecommender(EMBEDDINGS_PATH)
    
    K_VALUE_CAREER = 8
    K_VALUE_CLASS = 6
    
    # Create confusion matrices
    print("\n" + "="*60)
    print("CONFUSION MATRIX ANALYSIS")
    print("="*60)
    
    career_cm, career_true, career_pred = create_career_confusion_matrix(
        df_emb, df_careers, career_rec, K=K_VALUE_CAREER
    )
    
    print("\n" + "="*60)
    
    class_cm, class_true, class_pred = create_class_confusion_matrix(
        df_emb, df_classes_meta, K=K_VALUE_CLASS
    )
    
    print("\n" + "="*60)
    print("✅ Analysis Complete!")
    print("="*60)
