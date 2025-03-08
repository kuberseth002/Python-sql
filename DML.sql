CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    emp_role VARCHAR(50),
    emp_salary DECIMAL(10,2)
);

-- DML commands
INSERT INTO employees (emp_name, emp_role, emp_salary) 
VALUES 
('Kuber', 'Manager', 75000.00),
('Rakesh', 'Developer', 60000.00),
('Arnav', 'Analyst', 50000.00);

UPDATE employees 
SET emp_salary = 90000.00 
WHERE emp_name = 'Kuber';

UPDATE employees 
SET emp_salary = emp_salary * 1.10 
WHERE job_title = 'Developer';

UPDATE employees 
SET emp_salary = emp_salary + 5000 
WHERE job_title = 'Developer';

SELECT emp_name, emp_salary FROM employees WHERE emp_salary > 60000;

DELETE FROM employees 
WHERE emp_name = 'Arnav';

SELECT * FROM employees ORDER BY emp_salary DESC;

select * from employees;

SET SQL_SAFE_UPDATES = 0;




