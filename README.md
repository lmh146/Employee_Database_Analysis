# Employee_Database_Analysis

## Overview
This project looks to uncover the relationship between six separate data files and relate them into one cohesive database to then query for specific information regarding the employees' details, managerial staff, and departments.

## Employee Database
It begins by creating an Entity Relationship Diagram (ERD) to understand the content of each CSV file and how they could potentially relate to one another. 

![QuickDBD-Free Diagram](https://user-images.githubusercontent.com/88953017/149797429-e2be25a6-f398-45aa-9c45-3a5344d346f3.png)

From there, within postgreSQL the tables are created with consideration of the data type of each column to ensure proper importation of the CSV files can be done. Primary keys are included for each of the tables and when necessary foreign keys are added as well, all of which are highlighted in the ERD. 

Following the setup of the tables, querying the data begins looking at eight different aspects which test the relation of the data and queriability of the tables. Utilizing joins and groupy bys, it orders the data into the requested output for clarity and readability. 

![image](https://user-images.githubusercontent.com/88953017/149797192-16cac6eb-08f2-48c5-b868-abf502315e43.png)
![image](https://user-images.githubusercontent.com/88953017/149796485-419908ab-9c69-4ac8-b487-d64931e2415d.png)
