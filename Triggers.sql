USE school;
CREATE TABLE StudentDetails (
    S_ID INT PRIMARY KEY,
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);

INSERT INTO StudentDetails (S_ID, NAME, ADDRESS)
VALUES
    (1, 'Harsh', 'Kolkata'),
    (2, 'Ashish', 'Durgapur'),
    (3, 'Pratik', 'Delhi'),
    (4, 'Dhanraj', 'Bihar'),
    (5, 'Ram', 'Rajasthan');

CREATE TABLE StudentMarks (
    ID INT PRIMARY KEY,
    NAME VARCHAR(255),
    Marks INT,
    Age INT
);

INSERT INTO StudentMarks (ID, NAME, Marks, Age)
VALUES
    (1, 'Harsh', 90, 19),
    (2, 'Suresh', 50, 20),
    (3, 'Pratik', 80, 19),
    (4, 'Dhanraj', 95, 21),
    (5, 'Ram', 85, 18);
    
--  Trigger BEFORE INSERT
DELIMITER //
CREATE TRIGGER before_insert_student
BEFORE INSERT ON StudentDetails
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM StudentDetails WHERE NAME = NEW.NAME) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Duplicate Student Name Not Allowed';
    END IF;
END;
//
DELIMITER ;

-- Trigger AFTER INSERT--  
CREATE TABLE StudentLog (
    Log_ID INT AUTO_INCREMENT PRIMARY KEY,
    S_ID INT,
    NAME VARCHAR(255),
    ACTION VARCHAR(50),
    TIMESTAMP DATETIME DEFAULT CURRENT_TIMESTAMP
);
DELIMITER //
CREATE TRIGGER after_insert_student
AFTER INSERT ON StudentDetails
FOR EACH ROW
BEGIN
    INSERT INTO StudentLog (S_ID, NAME, ACTION)
    VALUES (NEW.S_ID, NEW.NAME, 'INSERTED');
END;
//
DELIMITER ;
INSERT INTO StudentDetails (S_ID, NAME, ADDRESS)
VALUES (6, 'Suresh', 'Gurgaon');

SELECT * FROM StudentLog; 


-- Trigger AFTER DELETE
DELIMITER //
CREATE TRIGGER after_delete_student
AFTER DELETE ON StudentDetails
FOR EACH ROW
BEGIN
    INSERT INTO StudentLog (S_ID, NAME, ACTION)
    VALUES (OLD.S_ID, OLD.NAME, 'DELETED');
END;
//
DELIMITER ;
DELETE FROM StudentDetails WHERE S_ID = 5; 

SELECT * FROM StudentLog; 
