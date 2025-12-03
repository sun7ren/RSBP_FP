# backend/app.py
from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)

CORS(app, resources={r"/api/*": {"origins": "http://localhost:3000"}})

@app.route('/', methods=['GET'])
def home():
    """Confirms the API is running."""
    return jsonify({"message": "Flask API is running!", "status": "ok"})

if __name__ == '__main__':
    app.run(debug=True, port=5000)


# Run using "python app.py"