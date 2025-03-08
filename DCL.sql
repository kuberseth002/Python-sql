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

-- DCL command-- 

CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'kuber@1234';

GRANT SELECT, INSERT, UPDATE ON company_db.employees TO 'new_user'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'admin1234';
GRANT ALL PRIVILEGES ON company_db.* TO 'admin_user'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

REVOKE UPDATE ON company_db.employees FROM 'new_user'@'localhost';
FLUSH PRIVILEGES;

DROP USER 'new_user'@'localhost';
FLUSH PRIVILEGES;

SELECT user, host FROM mysql.user;
