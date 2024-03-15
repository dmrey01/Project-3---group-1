# Project-3---group-1
Module 16 Project 3
Data Engineering Track 

Purpose of the project: The project aims to simulate a real-life scenario for a data engineer, focusing on handling raw healthcare data and executing the ETL process (Extract, Tranform and Load).  

About the dataset: Colorectal Cancer is the second leading cause of Cancer Deaths in the U.S. approximately 150,00 people will be diagnosed this year.

Steps to Extact and Tranform: 
- Source datasets and relevant informaiton through web research.  
- Conduct data analysis 
- Executed data tranformation processes, which involved: 

   - Analyzing the content of each file to understand its componets.  
   - Reviewing the column headers to ensure consistency in naming conventions. 
   - Importing the data into a dataframe
   - Filtering the data to extract the necessary columns across all three datasets. 
   - Renaming columns to adhere to best practices naming conventions. 
   - Investigating potential data mappings for consistency between different data tables , such as TMN staging and Duke Staging.  
   - Utilizing "Text Blob" to standardize specific column data entries, addressing variation like Spanish, NON:Hispan to Spanish
   - Saving each cleaned version of the dataframes into CSV files.
   - Developing an Entity-RElationship Diagram (ERD) for the tables, ensuring alignment with naming conventions, and verifying the Primary        Keys corresponded appropriately with each data table. 
   
   Data Loading Process: 
  
   - In he data loading process involved creating an Entity-RElationship Diagram (ERD) for tables.  The team ensured that        the naming      convention used in the ERD matched the naming convention of th tables. Additionally, they made sure that the Primary Keys                   aligned with each data table. 
   - A database was created using Postgres. Although Mondgo DB could have been used for some non-relation data, the team decided to use          Postgres due to its familiarity and ease of use.    
   - Aftercreating the database, an SQL query was created for the tables and columns within the tables.  This was done to ensure that they        matched the input file.  
   - The team then proceeded to upload the three CSV files into the respective database tables. 
   - To retrieve the data form the Postgres database, SqlAlchemy was used.  This alloed the team to retrieve data form all three tables. 
   - FLask_sqlalchemy was utilized to retrieve data from the database and load it onto an application using HTML. 
   
   
   Data Challenges:
   
    - One of the challenges encountered during the data loading process was the lack of a primary key related to patient_ID in the                 healthcare. To address this issue, a serial index was created as a primary key during the leading process. 
    - Another challege arose when retrieving data using Flask form Postgres. We learned why it is important to watch your data file               structure. The issue came about when we did not creat a template folder with the HTML file in it to ensure the porper functiong of the       HTML file. 
           - http://127.0.0.1:5000                
   
   
   Findings: 
   
   - From an ETL (Extract,Transform, Load) perspective, it is crucial to determine the desired output. When starting a project, it is            important to invest time in investigating the best tools to obtain the desired output for each project. 
   - The team also learned the imporatance of having contingency plans when the data output does not align with expectations. 
   - Additionally , the team discovered the benefits of using Flask-SQLAlchemy, which integrates Flask with Postgre SQL
   
   
   Database: 
   - The database used for this project was Postgres
  
   
   New Libraries: 
   - Two new libraries where utilized in this project, The first one is TextBlob, which was used for spell checking. The second library is        Flask-SQLALchemy, which was used to intregrate Flask with Postgres SQL. 
     TextBlob - for spelling checking
     Flask-SQLAlchemy - to integrate with FLASK and Prostges SQL
   
   Applications: 
   
   - The applications used in this project included Panda, Python, Jupyter Notebook, and Flask.
