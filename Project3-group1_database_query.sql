
-- This is the database queries for Project 3- Group1

-- Create the cleaned_patient table
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
 
-- Copy data from the csv file into the table created for cleaned_patient 
COPY cleaned_patient (
    "Age_at_diagnosis",
    "Gender",
    "DFS_in_months",
    "DFS_event",
    "Adj_Radio",
    "Adj_Chem",
    "Dukes_Stage"
) FROM 'C:\class\\cleaned_patient.csv' DELIMITER ',' CSV HEADER;

-- Run the query to ensure data is populated into the table
SELECT *
FROM cleaned_patient

-- Create the cleaned_supplementary table
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
-- Copy data from the csv file into the table created for cleaned_supplementary 
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
) FROM 'C:\class\\cleaned_supplementary.csv' DELIMITER ',' CSV HEADER;


-- Run query to validated data has been uploaded into the table
SELECT *
FROM cleaned_supplementary

-- Create cleaned_cancer_prediction table
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

-- Copy data from the csv file into the table created for cleaned_cancer_prediction 
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
) FROM 'C:\class\\cleaned_cancer_prediction.csv' DELIMITER ',' CSV HEADER;


--Run query to validate data was loaded accurately into the table
SELECT *
FROM cleaned_cancer_prediction

