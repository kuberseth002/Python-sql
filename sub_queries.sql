USE College;
CREATE TABLE students(
   rollno INT PRIMARY KEY,
   name VARCHAR(50),
   marks INT NOT NULL,
   grade VARCHAR(1),
   city VARCHAR(20)
);

INSERT INTO students
(rollno,name,marks,grade,city)
VALUES
(101,"Anil",78,"C","Pune"),
(102,"Amit",88,"B","Delhi"),
(103,"Ankit",98,"A","Chandigarh"),
(104,"Anku",68,"A","Goa"),
(105,"Amrit",58,"F","Punjab");

SELECT * FROM students;

SELECT AVG(marks)
FROM students;

SELECT name, marks
FROM students
WHERE marks>78.0000;

--  find even roll number
SELECT rollno,name 
FROM students
WHERE rollno%2=0;

SELECT name 
FROM students
WHERE rollno IN(102,14);


SELECT name,rollno
FROM students
WHERE rollno IN(
SELECT rollno 
FROM students
WHERE rollno%2=0);

-- find marks of delhi students
select * from students
WHERE city="Delhi";

SELECT MAX(marks)
FROM(SELECT * FROM students WHERE city="Delhi") AS temp;

SELECT MAX(marks)
FROM students 
WHERE city="goa";

-- using select
SELECT (SELECT MAX(marks) FROM students),name 
FROM students;