
from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:postgres@localhost:5432/Project3-Group1_Database'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

# Define models
class CleanedPatient(db.Model):
    __tablename__ = 'cleaned_patient'
    Patient_ID = db.Column(db.Integer, primary_key=True)
    Age_at_diagnosis = db.Column(db.Integer, nullable=False)
    Gender = db.Column(db.String(10), nullable=False)
    DFS_in_months = db.Column(db.Integer, nullable=False)
    DFS_event = db.Column(db.Float, nullable=False)
    Adj_Radio = db.Column(db.Float, nullable=False)
    Adj_Chem = db.Column(db.Float, nullable=False)
    Dukes_Stage = db.Column(db.String(2), nullable=False)

class CleanedSupplementary(db.Model):  
    __tablename__= 'cleaned_supplementary'
    Patient_ID = db.Column(db.Integer, primary_key=True)
    Age_at_diagnosis = db.Column(db.Integer, nullable=False)
    Gender = db.Column(db.String(10), nullable=False)
    Ethnicity =  db.Column(db.String(25), nullable=False)
    Race = db.Column(db.String(10), nullable=False)
    Surgery_type = db.Column(db.String(30), nullable=False)
    Diagnosed_before_age_50 = db.Column(db.String(10), nullable=False) 
    Histology = db.Column(db.String(30), nullable=False)
    Histologic_Grade = db.Column(db.String(10), nullable=False)
    Tumor_Size_cm = db.Column(db.Integer, nullable=False)
    Nodes_examined = db.Column(db.Integer, nullable=False)
    Nodes_positive = db.Column(db.Integer, nullable=False)
    Perineural_invasion = db.Column(db.String(10), nullable=False)
    Lymphovascular_invasion = db.Column(db.String(10), nullable=False)
    TNM_Staging = db.Column(db.String(10), nullable=False)
    Dukes_Stage = db.Column(db.String(2), nullable=False)

class CleanedCancerPrediction(db.Model):  
    __tablename__= 'cleaned_cancer_prediction'
    Patient_ID = db.Column(db.Integer, primary_key=True)
    Age_at_diagnosis = db.Column(db.Integer, nullable=False)
    Gender = db.Column(db.String(10), nullable=False)
    Smoking_status = db.Column(db.String(10), nullable=False)
    Alcohol_intake = db.Column(db.String(10), nullable=False)
    Physical_activity = db.Column(db.String(10), nullable=False)
    Family_history = db.Column(db.String(10), nullable=False)
    Medical_history = db.Column(db.String(30), nullable=False)
    Cancer_type = db.Column(db.String(10), nullable=False)
    Cancer_stage = db.Column(db.String(10), nullable=False)
    Dukes_Stage = db.Column(db.String(10), nullable=False)

@app.route('/')
def index():
    cleaned_patient = CleanedPatient.query.all()
    cleaned_supplementary = CleanedSupplementary.query.all()
    cleaned_cancer_prediction = CleanedCancerPrediction.query.all()
    
    return render_template('index.html', cleaned_patient=cleaned_patient, cleaned_supplementary=cleaned_supplementary, cleaned_cancer_prediction=cleaned_cancer_prediction)
    
# Run the Flask application
if __name__ == '__main__':
    app.run(debug=True)