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

SELECT CURDATE() AS `current_date`;

SELECT CURTIME() AS `current_time`;

SELECT teach_name, teach_hire_date, YEAR(teach_hire_date) AS hire_year FROM teacher;

SELECT teach_name, teach_hire_date, MONTH(teach_hire_date) AS hire_month FROM teacher;

SELECT teach_name, teach_hire_date, DAY(teach_hire_date) AS hire_day FROM teacher;

SELECT teach_name, teach_hire_date, DATE_ADD(teach_hire_date, INTERVAL 1 YEAR) AS next_year_hire FROM teacher;

SELECT teach_name, DATEDIFF(CURDATE(), teach_hire_date) AS days_since_hire FROM teacher;

SELECT teach_name, DATE_FORMAT(teach_hire_date, '%M %d, %Y') AS formatted_date FROM teacher;





