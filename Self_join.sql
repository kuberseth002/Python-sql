CREATE DATABASE organisation;
USE organisation;

CREATE TABLE dept(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO dept(dept_id, dept_name) VALUES
(1,'HR'),
(2,'Finance'),
(3,'IT'),
(4,'Marketing');

select * from dept;

CREATE TABLE employees(
   emp_id INT PRIMARY KEY,
   emp_name VARCHAR(50),
   dept_id INT,
   salary DECIMAL(10,2),
   FOREIGN KEY (dept_id) REFERENCES dept(dept_id)
);

INSERT INTO employees (emp_id, emp_name, dept_id, salary) VALUES
(101, 'Amit', 1, 50000.00),
(102, 'Priya', 2, 60000.00),
(103, 'Rohan', 3, 70000.00),
(104, 'Neha', 4, 55000.00),
(105, 'Kunal', NULL, 45000.00);

select * from employees;

SELECT A.emp_name AS Employee, B.emp_name AS Higher_Earner
FROM employees A, employees B
WHERE A.salary < B.salary;
