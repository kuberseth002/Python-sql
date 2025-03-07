CREATE DATABASE School;
use school;

CREATE TABLE teacher(
     teach_id INT AUTO_INCREMENT PRIMARY KEY,
     teach_name VARCHAR(100) NOT NULL,
     teach_role VARCHAR(50),
     teach_salary DECIMAL(10,2),
     teach_hire_date DATE
);

DESC teacher;

ALTER TABLE teacher ADD COLUMN teach_hire_date DATE;


INSERT INTO teacher(teach_id,teach_name,teach_role,teach_salary,teach_hire_date) VALUES
(1,'Arnav Singla', 'Mathematics Teacher', 75000.00, '2018-06-15'),
(2,'Abhi Rana', 'Science Teacher', 60000.00, '2020-08-10'),
(3,'Ajay Sharma', 'History Teacher', 55000.00, '2019-07-20'),
(4,'Kabir Khan', 'Computer Science Teacher', 65000.00, '2021-05-25'),
(5,'Punnet singh', 'English Teacher', 50000.00, '2017-03-12');

select * from teacher;

SELECT teach_name, UPPER(teach_name) AS upper_name FROM teacher;

SELECT teach_name, LOWER(teach_name) AS lower_name FROM teacher;

SELECT teach_name, LENGTH(teach_name) AS name_length FROM teacher;

SELECT teach_name, LEFT(teach_name, 5) AS first_five_chars FROM teacher;

SELECT teach_name, RIGHT(teach_name, 4) AS last_four_chars FROM teacher;

SELECT teach_role, REPLACE(teach_role, 'Teacher', 'Educator') AS updated_role FROM teacher;

SELECT CONCAT(teach_name, ' - ', teach_role) AS teacher_info FROM teacher;

SELECT teach_name, REVERSE(teach_name) AS reversed_name FROM teacher;

SELECT teach_name, TRIM(teach_name) AS trimmed_name FROM teacher;


