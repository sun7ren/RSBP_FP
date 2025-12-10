# careerRecommender.py
import numpy as np
import pandas as pd
from sklearn.metrics.pairwise import cosine_similarity

class CareerRecommender:
    def __init__(self, career_embedding_file):
        # Load CSV with career embeddings
        self.df = pd.read_csv(career_embedding_file)
        # Convert the embedding string to numpy array
        self.embeddings = np.vstack(self.df['embedding'].apply(eval))

    def recommend(self, student_vector, top_k=8):
        student_vector = np.array(student_vector).reshape(1, -1)
        scores = cosine_similarity(student_vector, self.embeddings)[0]
        top_indices = np.argsort(scores)[::-1][:top_k]
        return self.df.iloc[top_indices].assign(score=scores[top_indices])