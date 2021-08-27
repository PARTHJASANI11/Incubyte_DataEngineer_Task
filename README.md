# Incubyte DataEngineer Task

This task is done as a part of the recruitment process for the role of Data Engineer at Incubyte.

### Incubyte_DataEngineer_HospitalData.dat:
This file contains the patient's data of some multi specialty hospital  separated with "|" .

### Incubyte_DataEngineer_ScriptFile.php:
This is the script to create the table in the database for each country present in given data by reading each row. It also stores the patient's data in each country's table.

### incubyte_dataengineer_database.sql:
This file contains database schema after insertion of given data.

### php.ini and config.inc.php:
These are the configuration files for PHP and MySQL respectively.


### Workflow of Project:
1) Configure PHP and MySQL server
2) Download  Incubyte_DataEngineer_HospitalData.dat file. If one wishes to add, delete or update data, then they can do so while keeping in mind the required format. 
3) Run Incubyte_DataEngineer_ScriptFile.php file. Tables will be created and data will be entered into the database. 
