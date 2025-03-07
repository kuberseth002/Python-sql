CREATE DATABASE emp;
USE emp;
CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT,
    fname VARCHAR(50),
    lname VARCHAR(50),
    age INT,
    position VARCHAR(50),
    salary DECIMAL(10,2),
    PRIMARY KEY (id)
);
INSERT INTO employees (fname, lname, age, position, salary) VALUES
('John', 'Doe', 30, 'Software Engineer', 75000.00),
('Jane', 'Smith', 28, 'Data Analyst', 68000.50),
('Mike', 'Johnson', 35, 'Project Manager', 90000.75),
('Emily', 'Davis', 27, 'HR Manager', 62000.00),
('Robert', 'Brown', 40, 'Senior Developer', 110000.25);

UPDATE employees SET salary = 80000.00 WHERE id = 6;

DELETE FROM employees WHERE id = 4;


SELECT * FROM employees;

