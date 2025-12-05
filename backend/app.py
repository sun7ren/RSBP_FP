# Run using "python app.py"
from flask import Flask, jsonify, request
import csv
from flask_cors import CORS 
import pandas as pd
import numpy as np
import ast


# Load Embeddings ONCE at Startup
print("Loading embeddings...")
EMBEDDINGS_PATH = "/Users/arininurazizah/tcareer_rsbp/backend/dataset/RSBP_FP.csv"

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

CLASS_CSV_PATH = '/Users/arininurazizah/tcareer_rsbp/backend/dataset/Class.csv'
SKILL_CSV_PATH = '/Users/arininurazizah/tcareer_rsbp/backend/dataset/Skill.csv'

ALL_CLASSES = []
ALL_SKILLS = []


# Utility - Load Classes/Skills
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

                elif data_type == 'skill':
                    if not row.get('name'):
                        continue
                    item['type'] = 'skill'

                items.append(item)

    except Exception as e:
        print(f"Error reading {file_path}: {e}")

    return items


def initialize_data():
    global ALL_CLASSES, ALL_SKILLS
    print("Initializing class data...")
    ALL_CLASSES = load_data_from_csv(CLASS_CSV_PATH, 'class')
    print(f"Loaded {len(ALL_CLASSES)} classes.")

    print("Initializing skill data...")
    ALL_SKILLS = load_data_from_csv(SKILL_CSV_PATH, 'skill')
    print(f"Loaded {len(ALL_SKILLS)} skills.")


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

    # Filter embeddings
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


# RUN APP
if __name__ == '__main__':
    initialize_data()
    app.run(debug=True, port=5000)
