-- implemented DDl,DML,TCL and DCL Commands

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

-- DDL commands
ALTER TABLE employees ADD COLUMN emp_hire_date DATE;

ALTER TABLE employees MODIFY COLUMN emp_name VARCHAR(100);

ALTER TABLE employees CHANGE COLUMN emp_role job_title VARCHAR(50);

RENAME TABLE employees TO staff;

ALTER TABLE staff DROP COLUMN emp_hire_date;

TRUNCATE TABLE staff;

DROP TABLE staff;





