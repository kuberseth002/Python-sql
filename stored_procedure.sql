USE school;

CREATE TABLE Student (
    S_ID INT PRIMARY KEY, 
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);

INSERT INTO Student (S_ID, NAME, ADDRESS)
VALUES
    (1, 'Harsh', 'Kolkata'),
    (2, 'Ashish', 'Durgapur'),
    (3, 'Pratik', 'Delhi'),
    (4, 'Dhanraj', 'Bihar'),
    (5, 'Ram', 'Rajasthan');

CREATE TABLE Marks (
    ID INT PRIMARY KEY,  
    NAME VARCHAR(255),
    Marks INT,
    Age INT
);

INSERT INTO Marks (ID, NAME, Marks, Age)
VALUES
    (1, 'Harsh', 90, 19),
    (2, 'Suresh', 50, 20),
    (3, 'Pratik', 80, 19),
    (4, 'Dhanraj', 95, 21),
    (5, 'Ram', 85, 18);
    
--     Simple Stored Procedure 
DELIMITER //
CREATE PROCEDURE GetAllStudents()
BEGIN
    SELECT * FROM StudentDetails;
END;
//
DELIMITER ;
CALL GetAllStudents();

-- Stored Procedure with Parameters
DELIMITER //
CREATE PROCEDURE GetStudentByName(IN student_name VARCHAR(255))
BEGIN
    SELECT * FROM StudentDetails WHERE NAME = student_name;
END;
//
DELIMITER ;
CALL GetStudentByName('Harsh');

-- Stored Procedure with INSERT
DELIMITER //
CREATE PROCEDURE InsertStudent(IN sid INT, IN sname VARCHAR(255), IN saddress VARCHAR(255))
BEGIN
    INSERT INTO StudentDetails (S_ID, NAME, ADDRESS)
    VALUES (sid, sname, saddress);
END;
//
DELIMITER ;
CALL InsertStudent(6, 'Amit', 'Mumbai');

--  Stored Procedure with UPDATE
DELIMITER //
CREATE PROCEDURE UpdateStudentAddress(IN sid INT, IN new_address VARCHAR(255))
BEGIN
    UPDATE StudentDetails SET ADDRESS = new_address WHERE S_ID = sid;
END;
//
DELIMITER ;
CALL UpdateStudentAddress(3, 'Chennai');alter

-- delete procedure
DELIMITER //
CREATE PROCEDURE DeleteStudent(IN sid INT)
BEGIN
    DELETE FROM StudentDetails WHERE S_ID = sid;
END;
//
DELIMITER ;

CALL DeleteStudent(5);






