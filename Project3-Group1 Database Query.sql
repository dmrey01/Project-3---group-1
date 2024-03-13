
-- This is the relationship diagram for Project 3

CREATE TABLE "cleaned_patient" (
	
    "Age_at_diagnosis" INTEGER NOT NULL,
    "Gender" VARCHAR(10)   NOT NULL,
    "DFS_in_months" INTEGER   NOT NULL,
    "DFS_event" FLOAT   NOT NULL,
    "Adj_Radio" FLOAT   NOT NULL,
    "Adj_Chem" FLOAT   NOT NULL,
    "Dukes_Stage" VARCHAR(2)   NOT NULL,
	"Patient_ID" SERIAL PRIMARY KEY
 );
 
COPY cleaned_patient (
    "Age_at_diagnosis",
    "Gender",
    "DFS_in_months",
    "DFS_event",
    "Adj_Radio",
    "Adj_Chem",
    "Dukes_Stage"
) FROM 'C:\\PythonStuff\\Repo\\Project-3---group-1\\cleaned_patient.csv' DELIMITER ',' CSV HEADER;


SELECT *
FROM cleaned_patient

CREATE TABLE "cleaned_supplementary" (
    "Age_at_diagnosis" INTEGER NOT NULL,
    "Gender" VARCHAR   NOT NULL,
    "Ethnicity" VARCHAR   NOT NULL,
    "Race" VARCHAR   NOT NULL,
    "Surgery_type" VARCHAR   NOT NULL,
    "Diagnosed_before_age_50" VARCHAR   NOT NULL,
    "Histology" VARCHAR   NOT NULL,
    "Histologic_Grade" VARCHAR   NOT NULL,
    "Tumor_Size_cm" FLOAT   NOT NULL,
    "Nodes_examined" INTEGER   NOT NULL,
    "Nodes_positive" INTEGER   NOT NULL,
    "Perineural_invasion" VARCHAR   NOT NULL,
    "Lymphovascular_invasion" VARCHAR   NOT NULL,
    "TNM_Staging" VARCHAR   NOT NULL,
    "Dukes_Stage" VARCHAR   NOT NULL,
	"Patient_ID" SERIAL PRIMARY KEY
    
);
COPY cleaned_supplementary (
    "Age_at_diagnosis",
    "Gender",
    "Ethnicity",
    "Race",
    "Surgery_type",
    "Diagnosed_before_age_50",
    "Histology",
    "Histologic_Grade",
    "Tumor_Size_cm",
    "Nodes_examined",
    "Nodes_positive",
    "Perineural_invasion",
    "Lymphovascular_invasion",
    "TNM_Staging",
    "Dukes_Stage"
) FROM 'C:\\PythonStuff\\Repo\\Project-3---group-1\\cleaned_supplementary.csv' DELIMITER ',' CSV HEADER;



SELECT *
FROM cleaned_supplementary

CREATE TABLE "cleaned_cancer_prediction" (
    "Age_at_diagnosis" INTEGER   NOT NULL,
    "Gender" VARCHAR   NOT NULL,
    "Smoking_status" VARCHAR   NOT NULL,
    "Alcohol_intake" VARCHAR   NOT NULL,
    "Physical_activity" VARCHAR   NOT NULL,
    "Family_history" VARCHAR   NOT NULL,
    "Medical_history" VARCHAR   NOT NULL,
    "Cancer_type" VARCHAR   NOT NULL,
    "Cancer_stage" VARCHAR   NOT NULL,
    "Dukes_Stage" VARCHAR   NOT NULL,
    "Patient_ID" SERIAL PRIMARY KEY
     
);

COPY cleaned_cancer_prediction (
    "Age_at_diagnosis",
    "Gender",
    "Smoking_status",
    "Alcohol_intake",
    "Physical_activity",
    "Family_history",
    "Medical_history",
    "Cancer_type",
    "Cancer_stage",
    "Dukes_Stage"
) FROM 'C:\\PythonStuff\\Repo\\Project-3---group-1\\cleaned_cancer_prediction.csv' DELIMITER ',' CSV HEADER;


SELECT *
FROM cleaned_cancer_prediction

SELECT *
FROM cleaned_supplementary AS cs
INNER JOIN cleaned_cancer_prediction AS ccp ON cs.Age_at_diagnosis == ccp.Age_at_diagnosis;
