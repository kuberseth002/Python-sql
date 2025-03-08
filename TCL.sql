CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    emp_role VARCHAR(50),
    emp_salary DECIMAL(10,2)
);

INSERT INTO employees (emp_name, emp_role, emp_salary) 
VALUES 
('Kuber', 'Manager', 75000.00),
('Rakesh', 'Developer', 60000.00),
('Arnav', 'Analyst', 50000.00);

SET SQL_SAFE_UPDATES = 0;

START TRANSACTION;

INSERT INTO employees (emp_name, job_title, emp_salary) 
VALUES ('David', 'HR', 45000.00);

SAVEPOINT before_delete;

DELETE FROM employees WHERE emp_name = 'Arnav';

ROLLBACK TO before_delete;
COMMIT;
SELECT * FROM employees;


