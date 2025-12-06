import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
import pandas as pd

class ClassRecommender:
    def __init__(self, class_embedding_file):
        self.df = pd.read_csv(class_embedding_file)
        self.embeddings = np.vstack(self.df['embedding'].apply(eval))

    def recommend(self, student_vector, top_k=6):
        student_vector = np.array(student_vector).reshape(1, -1)

        scores = cosine_similarity(student_vector, self.embeddings)[0]

        top_indices = np.argsort(scores)[::-1][:top_k]

        return self.df.iloc[top_indices].assign(score=scores[top_indices])
