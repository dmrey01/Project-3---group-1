# Project-3---group-1
Module 16 Project 3
Data Engineering Track 

# Overview and Process
Purpose of the project: The project aims to simulate a real-life scenario for a data engineer, focusing on handling raw healthcare data and executing the ETL process (Extract, Tranform and Load).  

About the dataset: Colorectal Cancer is the second leading cause of Cancer Deaths in the U.S. approximately 150,00 people will be diagnosed this year.

Steps to Extact and Tranform: 
- Source datasets and relevant informaiton through web research.  
- Conduct data analysis 
- Execute data tranformation processes, which involved: 
   - Analyzing the content of each file to understand its componets.  
   - Reviewing the column headers to ensure consistency in naming conventions. 
   - Importing the data into a dataframe.
   - Filtering the data to extract the necessary columns across all three datasets. 
   - Renaming columns to adhere to best practices naming conventions. 
   - Investigating potential data mappings for consistency between different data tables , such as TMN staging and Duke Staging.  
   - Utilizing "Text Blob" to standardize specific column data entries, addressing variation like "Spanish, Nos; Hispan" to "Spanish".
   - Saving each cleaned version of the dataframes into CSV files.
   - Developing an Entity-RElationship Diagram (ERD) for the tables, ensuring alignment with naming conventions, and verifying the Primary        Keys corresponded appropriately with each data table. 
   
   Data Loading Process:   
   - The data loading process involved creating an Entity-RElationship Diagram (ERD) for tables.  The team ensured that the naming convention used in the ERD matched the naming convention of the tables. Additionally, they made sure that the Primary Keys aligned with each data table. 
   - A database was created using Postgres. Although NoSQL or Mondgo DB could have been used for the non-relation data, the team decided to use      Postgres due to its familiarity and ease of use.    
   - Aftercreating the database, an SQL query was created for the tables and columns within the tables.  This was done to ensure that they        matched the input file.  
   - The team then proceeded to upload the three CSV files into the respective database tables. 
   - To retrieve the data form the Postgres database, Flask-SQLAlchemy was used.  This allowed the team to retrieve data form all three tables. 
   - FLask_sqlalchemy was utilized to retrieve data from the database and load it onto an application using HTML.    
   
Data Challenges:
 - One of the challenges encountered during the data loading process was the lack of a primary key related to patient_ID in the                 healthcare. To address this issue, a serial index was created as a primary key during the leading process. 
 - Another challege arose when retrieving data using Flask-SQLAlchemy form Postgres. We learned why it is important to watch your data file      structure. The issue came about when we did not creat a template folder with the HTML file in it to ensure the porper functiong of the       HTML file.                         

Findings:    
  - From an ETL (Extract,Transform, Load) perspective, it is crucial to determine the desired output. When starting a project, it is            important to invest time in investigating the best tools to obtain the desired output for each project. 
  - The team also learned the imporatance of having contingency plans when the data output does not align with expectations. 
  - Additionally , the team discovered the benefits of using Flask-SQLAlchemy, which integrates Flask with Postgre SQL 
   
Database: 
  - The database used for this project was Postgres  
   
New Libraries:   
  - Two new libraries where utilized in this project, The first one is TextBlob, which was used for spell checking. The second library is        Flask-SQLALchemy, which was used to intregrate Flask with Postgres SQL. 
    - TextBlob - for spelling checking
    - Flask-SQLAlchemy - to integrate with FLASK and Prostges SQL   

Applications:    
  - The applications used in this project included Pandas, Python, Jupyter Notebook, flask and sqlalchemy.

# Instructions on how to use and interact with the project
Folders
   - The Data folder contains the raw data from the provided references as well as information for TNM to Dukes staging.
   - The Project info folder contains the project proposal and a list of researched websites for reference only.
   - The templates folder houses the index.html file.

Files
   - Data_prep.ipynb is the file used to clean the data. This file contains all the steps taken to import the original csv files, transform them, and output them to cleaned csv files.
   -  cleaned_cancer_prediction.csv, cleaned_patient.csv, and cleaned_supplementary.csv are the files created from the Data_prep.ipynb.
   -  Project3-Group1_Database.sql is the postgress database file with the information from the cleaned csv files.
   -  Project3-group1_database_query.sql 
   -  app.py is the flask file that links to the postgres database and html file.
        - open in visual studio 
        - open a terminal and run python app.py
        - follow the http://127.0.0.1:5000 link that populates. Three tables populate in the web browser.
        - Note: pip install flask_sqlalchemy will need to be ran to run the app.py file.
   - retrieving_data_from_database.ipynb is a notebook that is linked to the Postgres database and displays the three tables.


References:
  - https://www.kaggle.com/datasets/amandam1/colorectal-cancer-patients?resource=download
  - https://figshare.com/search?q=%3Acategory%3A%20%22Cancer%20Diagnosis%22&itemTypes=3
  - https://www.kaggle.com/datasets/omkarm0542/cancer-disease-prediction
  - Chat GPT was utilized for some code assistance.
