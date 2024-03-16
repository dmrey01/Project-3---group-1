# PROJECT-3---GROUP-1
Module 16 Project 3
Data Engineering Track 

# PROJECT OVERVIEW & PROCESS
**PURPOSE OF THE PROJECT:** The project aims to simulate a real-life scenario for a data engineer, focusing on handling raw healthcare data and executing the ETL process (Extract, Transform and Load).

**ABOUT THE DATA SET:** Colorectal Cancer is the second leading cause of Cancer Deaths in the U.S. approximately 150,00 people will be diagnosed this year.

**STEPS TO EXTRACT AND TRANSFORM:**
- Source datasets and relevant information through web research. 
- Conduct data analysis
- Execute data transformation processes, which involved:
   - Analyzing the content of each file to understand its components. 
   - Reviewing the column headers to ensure consistency in naming conventions.
   - Importing the data into a data frame.
   - Filtering the data to extract the necessary columns across all three datasets.
   - Renaming columns to adhere to best practices naming conventions. 
   - Investigating potential data mappings for consistency between different data tables, such as TMN staging and Duke Staging.
   - Utilizing "Text Blob" to standardize specific column data entries, addressing variations like "Spanish, Nos; Hispan" to "Spanish".
   - aving each cleaned version of the data frames into CSV files.
   - Developing an Entity-Relationship Diagram (ERD) for the tables, ensuring alignment with naming conventions, and verifying the Primary Keys corresponded appropriately with each data table.
   
   **DATA LOADING PROCESS:**   
   - The data loading process involved creating an Entity-Relationship Diagram (ERD) for tables. The team ensured that the naming convention used in the ERD matched the naming convention of the tables. Additionally, they made sure that the Primary Keys aligned with each 
     data table. 
   - A database was created using Postgres. Although NoSQL or MongoDB could have been used for the non-relation data, the team decided to use Postgres due to its familiarity and ease of use.  
   - After creating the database, an SQL query was created for the tables and columns within the tables. This was done to ensure that they matched the input file.
   - The team then proceeded to upload the three CSV files into the respective database tables. 
   - To retrieve the data from the Postgres database, Flask-SQLAlchemy was used. This allowed the team to retrieve data from all three tables.
   - FLask_sqlalchemy was utilized to retrieve data from the database and load it onto an application using HTML.  
   
**DATA CHALLENGES:**
 - One of the challenges encountered during the data loading process was the lack of a primary key in each of the data sets. This is due to the nature of the data which is guarded by HIPPA laws to protect patient privacy and information as an ethical consideration. To 
   address this issue, a serial index was created as a primary key in the Postgres database to uniquely identify each row of data in all three tables.
 - Another challenge arose when retrieving data using Flask-SQLAlchemy from Postgres. We learned why it is important to watch your data file structure. The issue came about when we did not create a template folder with the HTML file in it to ensure the proper 
   functioning of the HTML code.                      

**FINDINGS:**    
  - From an ETL (Extract, Transform, Load) perspective, it is crucial to determine the desired output. When starting a project, it is important to invest time in investigating the best tools to obtain the desired output for each project.
  - The team also learned the importance of having contingency plans when the data output does not align with expectations.
  - Additionally, the team discovered the benefits of using Flask-SQLAlchemy, which integrates Flask with PostgreSQL
  - Some of the ethical considerations of the data sets were as follows:
      - The data lacked diversity in data in:
        - Ethnicity was limited to either black or white, or Spanish or non-Spanish and therefore doesn't represent the population as a whole
        - Data representing a diverse age group. Most of the data represented data over 50 years of age and not necessarily younger age groups which trends have shown are alarmingly getting colon cancer.
    
   
**DATABASE:**
  - The database used for this project was PostgreSQL
   
**NEW LIBRARIES USED:**  
   - Two new libraries were used in this project, The first one is TextBlob, which was used for spell-checking. The second library is Flask-SQLALchemy, which was used to integrate Flask with Postgres SQL.
      - TextBlob - for spelling checking
      - Flask-SQLAlchemy - to integrate with FLASK and Postgres SQL

**APPLICATIONS:**    
  - The applications used in this project included Pandas, Python, Jupyter Notebook, flask, and SQLAlchemy.

# PROJECT FILES/FOLDER BREAKDOWN 
**FOLDERS**
   - The Data folder contains the raw data from the provided references as well as information for TNM to Dukes staging.
   - The Project info folder contains the project proposal and a list of researched websites for reference only.
   - The templates folder houses the index.html file.

**FILES**
   - **Data_prep.ipynb** is the file used to clean the data. This file holds all the steps taken to import the original CSV files, transform them, and output them to cleaned CSV files.
   -  **cleaned_cancer_prediction.csv**, cleaned_patient.csv, and cleaned_supplementary.csv are the files created from the Data_prep.ipynb.
   -  **Project3-Group1_Database.sql** is the Postgres database file with the information from the cleaned CSV files.
   -  **app.py** is the flask file that links to the Postgres database and HTML file.
        - open in Visual Studio
        - open a terminal and run python app.py
        - follow the http://127.0.0.1:5000 link that populates. Three tables populate in the web browser.
        - **Note:** pip install flask_sqlalchemy will need to be ran to run the app.py file.
   - **retrieving_data_from_database.ipynb** is a notebook that is linked to the Postgres database and displays the three tables in a pandas Data Frame.

**REFERENCES:**
  - https://www.kaggle.com/datasets/amandam1/colorectal-cancer-patients?resource=download
  - https://figshare.com/search?q=%3Acategory%3A%20%22Cancer%20Diagnosis%22&itemTypes=3
  - https://www.kaggle.com/datasets/omkarm0542/cancer-disease-prediction
  - Chat GPT was utilized for some code assistance.
