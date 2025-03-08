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

Select * from staff;

-- dml update--   
UPDATE employees 
SET emp_salary = 80000.00 
WHERE emp_name = 'Kuber';

--  Delete dml--  
DELETE FROM employees WHERE emp_name = 'Arnav';

-- retrieve data dml--  
SELECT * FROM employees;

--  grant privileges (dcl)-- 
CREATE USER 'kuber_user'@'localhost' IDENTIFIED BY 'kuber1234';
GRANT SELECT, INSERT, UPDATE ON company_db.* TO 'kuber_user'@'localhost';
FLUSH PRIVILEGES;

--  Revoke privileges
REVOKE UPDATE ON company_db.* FROM 'kuber_user'@'localhost';
FLUSH PRIVILEGES;

-- transaction (TCL)
START TRANSACTION;
-- Insert a new employee (dml + tcl)
INSERT INTO employees (emp_name, emp_role, emp_salary) 
VALUES ('David', 'HR', 45000.00);

 -- savepoint (TCL)
 SAVEPOINT before_delete;
 
 -- Delete  record (DML)
DELETE FROM employees WHERE emp_name = 'Rakesh';
 
--  Rollback tcl
ROLLBACK TO before_delete;

--  Commit tcl -- 
COMMIT;

SELECT * FROM employees;




