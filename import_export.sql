-- import table data into csv file  
SELECT * FROM students 
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/students.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

SHOW VARIABLES LIKE 'secure_file_priv';


-- export data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/mydata - mydata.csv'
INTO TABLE students
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS

