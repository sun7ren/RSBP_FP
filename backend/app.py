# Run using "python app.py"
from flask import Flask, jsonify, request
import csv
from flask_cors import CORS 
import pandas as pd
import numpy as np
import ast


# Load Embeddings ONCE at Startup
print("Loading embeddings...")
EMBEDDINGS_PATH = "/Users/bella/RSBP_FP/backend/dataset/RSBP_FP.csv"

try:
    df_embeddings = pd.read_csv(EMBEDDINGS_PATH)
    df_embeddings["embedding"] = df_embeddings["embedding"].apply(
        lambda x: np.array(ast.literal_eval(x))
    )
    print(f"Loaded {len(df_embeddings)} embedding vectors.")
except Exception as e:
    print("Failed to load embeddings:", e)
    df_embeddings = pd.DataFrame()


# Flask Setup
app = Flask(__name__)
CORS(app, resources={r"/*": {"origins": "*"}})

# CSV paths
CLASS_CSV_PATH = '/Users/bella/RSBP_FP/backend/dataset/Class.csv'
SKILL_CSV_PATH = '/Users/bella/RSBP_FP/backend/dataset/Skill.csv'
CAREER_CSV_PATH = '/Users/bella/RSBP_FP/backend/dataset/Career.csv'

# Global data
ALL_CLASSES = []
ALL_SKILLS = []
ALL_CAREERS = []


# --- FIX: helper to parse list fields like [AI/ML, Python]
def parse_list_cell(raw):
    if not raw or raw.strip() == "" or raw.strip() == "[]":
        return []
    txt = raw.strip()

    # remove leading/trailing brackets
    if txt.startswith("[") and txt.endswith("]"):
        txt = txt[1:-1].strip()

    if not txt:
        return []

    # split by comma
    parts = [p.strip() for p in txt.split(",")]
    return [p for p in parts if p]


# Utility - Load CSV
def load_data_from_csv(file_path, data_type):
    items = []
    try:
        with open(file_path, mode='r', newline='', encoding='utf-8') as file:
            reader = csv.DictReader(file)
            for row in reader:
                item = {
                    'name': row.get('name', ''),
                }

                if data_type == 'class':
                    status = row.get('status', '').lower()
                    if status not in ['mandatory', 'elective']:
                        continue
                    item['type'] = status
                    item['credits'] = int(row.get('credits', 0))
                    item['semester'] = row.get('semester', '').lower()

                    # FIX: parse skills cleanly
                    raw_sk = row.get('teaches_skills', '')
                    item['skills'] = parse_list_cell(raw_sk)

                    # FIX: parse prerequisites_for cleanly
                    raw_pr = row.get('prerequisites_for', '')
                    item['prereq_for'] = parse_list_cell(raw_pr)

                    # build real prerequisites later
                    item['prerequisites'] = []


                elif data_type == 'skill':
                    if not row.get('name'):
                        continue
                    item['type'] = 'skill'

                elif data_type == 'career':
                    if not row.get('name'):
                        continue
                    item['type'] = 'career'

                items.append(item)

    except Exception as e:
        print(f"Error reading {file_path}: {e}")

    return items


def initialize_data():
    global ALL_CLASSES, ALL_SKILLS, ALL_CAREERS

    print("Initializing class data...")
    ALL_CLASSES = load_data_from_csv(CLASS_CSV_PATH, 'class')
    print(f"Loaded {len(ALL_CLASSES)} classes.")

    print("Initializing skill data...")
    ALL_SKILLS = load_data_from_csv(SKILL_CSV_PATH, 'skill')
    print(f"Loaded {len(ALL_SKILLS)} skills.")

    print("Initializing career data...")
    ALL_CAREERS = load_data_from_csv(CAREER_CSV_PATH, 'career')
    print(f"Loaded {len(ALL_CAREERS)} careers.")

    # build prerequisites graph
    build_prerequisites()


# build prerequisites from reverse mapping
def build_prerequisites():
    name_to_class = {c['name']: c for c in ALL_CLASSES}

    for cls in ALL_CLASSES:
        targets = cls.get('prereq_for', [])
        for target_name in targets:
            if target_name in name_to_class:
                name_to_class[target_name]['prerequisites'].append(cls['name'])


# API: GET Classes
@app.route('/api/classes', methods=['GET'])
def get_all_classes():
    filtered_list = ALL_CLASSES

    semester_filter = request.args.get('semester', '').lower()
    search_term = request.args.get('search', '').lower()
    type_filter = request.args.get('type', 'all').lower()

    if type_filter in ['mandatory', 'elective']:
        filtered_list = [c for c in filtered_list if c['type'] == type_filter]

    if semester_filter in ['odd', 'even']:
        filtered_list = [c for c in filtered_list if c['semester'] == semester_filter]

    if search_term:
        filtered_list = [c for c in filtered_list if search_term in c['name'].lower()]

    return jsonify(filtered_list)


# API: GET Skills
@app.route('/api/skills', methods=['GET'])
def get_all_skills():
    search_term = request.args.get('search', '').lower()

    if search_term:
        return jsonify([s for s in ALL_SKILLS if search_term in s['name'].lower()])

    return jsonify(ALL_SKILLS)


# API: GET Careers
@app.route('/api/careers', methods=['GET'])
def get_all_careers():
    search_term = request.args.get('search', '').lower()

    if search_term:
        return jsonify([c for c in ALL_CAREERS if search_term in c['name'].lower()])

    return jsonify(ALL_CAREERS)


# API: /api/submit-selection
@app.route('/api/submit-selection', methods=['POST'])
def submit_selection():
    data = request.get_json()
    classes = data.get("classes", [])
    skills = data.get("skills", [])

    print("Received classes:", classes)
    print("Received skills:", skills)

    return jsonify({
        "message": "Selection received",
        "classes_count": len(classes),
        "skills_count": len(skills)
    })


# API: /api/student-embedding
@app.route('/api/student-embedding', methods=['POST'])
def compute_student_embedding():
    data = request.get_json()

    selected_classes = data.get("classes", [])
    selected_skills = data.get("skills", [])
    selected = selected_classes + selected_skills

    if not selected:
        return jsonify({"error": "No selections provided"}), 400

    matched = df_embeddings[df_embeddings["name"].isin(selected)]

    if matched.empty:
        return jsonify({"error": "No embeddings matched"}), 400

    embeddings = np.stack(matched["embedding"].values)
    student_vector = embeddings.mean(axis=0)

    print("\n=== Student embedding computed ===")
    print("Selected items:", selected)
    print("Matched vectors:", len(matched))
    print("Computed embedding:", student_vector[:10], "...")
    print("=================================\n")

    return jsonify({
        "message": "Student embedding computed",
        "vector": student_vector.tolist(),
        "count_used": len(matched)
    })


##### RECOMMENDATION (EXISTING CODE) ############################
def recommend_classes_knn(student_vector, top_k=6):
    try:
        df_classes = df_embeddings[df_embeddings["type"] == "class"]
    except:
        class_names = [c["name"] for c in ALL_CLASSES]
        df_classes = df_embeddings[df_embeddings["name"].isin(class_names)]

    vectors = np.stack(df_classes["embedding"].values)
    student = np.array(student_vector).reshape(1, -1)

    dot = np.dot(vectors, student.T).flatten()
    norm_student = np.linalg.norm(student)
    norm_vectors = np.linalg.norm(vectors, axis=1)
    similarity = dot / (norm_student * norm_vectors)

    idx = np.argsort(similarity)[::-1][:top_k]
    top_items = df_classes.iloc[idx]

    results = []
    for row_index, row in top_items.iterrows():
        name = row["name"]
        match = next((c for c in ALL_CLASSES if c["name"] == name), None)

        results.append({
            "name": name,
            "similarity": float(similarity[row_index]),
            "credits": match.get("credits") if match else None,
            "type": match.get("type") if match else None,
            "semester": match.get("semester") if match else None
        })
    return results


@app.route('/api/recommend/classes', methods=['POST'])
def api_recommend_classes():
    data = request.get_json()
    student_vector = data.get("vector", None)

    if student_vector is None:
        return jsonify({"error": "Missing 'vector'"}), 400

    try:
        results = recommend_classes_knn(student_vector, top_k=6)
        return jsonify({
            "results": results,
            "count": len(results)
        })
    except Exception as e:
        print("Error in recommendation:", e)
        return jsonify({"error": str(e)}), 500
##################################################################


# RUN APP
if __name__ == '__main__':
    initialize_data()
    app.run(debug=True, port=5000)
