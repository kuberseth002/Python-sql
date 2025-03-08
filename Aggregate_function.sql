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

SELECT COUNT(*) AS total_teachers FROM teacher;

SELECT ROUND(AVG(teach_salary)) AS avg_salary FROM teacher;

SELECT MAX(teach_salary) AS highest_salary FROM teacher;

SELECT MIN(teach_salary) AS lowest_salary FROM teacher;

SELECT SUM(teach_salary) AS total_salary FROM teacher;

SELECT COUNT(*) AS total_math_teachers FROM teacher WHERE teach_role = 'Mathematics Teacher';

SELECT AVG(teach_salary) AS avg_science_teacher_salary FROM teacher WHERE teach_role = 'Science Teacher';

SELECT SUM(teach_salary) AS total_cs_teacher_salary FROM teacher WHERE teach_role = 'Computer Science Teacher';

SELECT MAX(teach_salary) - MIN(teach_salary) AS salary_difference FROM teacher;

SELECT COUNT(DISTINCT teach_role) AS unique_subjects FROM teacher;




