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
    
CREATE VIEW DetailsView AS
SELECT NAME, ADDRESS
FROM StudentDetails
WHERE S_ID < 5;
SELECT * FROM DetailsView;

CREATE VIEW StudentNames AS
SELECT S_ID, NAME
FROM StudentDetails
ORDER BY NAME;
SELECT * FROM StudentNames;

-- create view from multiple table-- 
CREATE VIEW MarksView AS
SELECT StudentDetails.NAME, StudentDetails.ADDRESS, StudentMarks.MARKS
FROM StudentDetails, StudentMarks
WHERE StudentDetails.NAME = StudentMarks.NAME;
SELECT * FROM MarksView;

-- --drop view--  
DROP VIEW MarksView;

CREATE OR REPLACE VIEW MarksView AS
SELECT StudentDetails.NAME, StudentDetails.ADDRESS, StudentMarks.MARKS, StudentMarks.AGE
FROM StudentDetails, StudentMarks
WHERE StudentDetails.NAME = StudentMarks.NAME;
SELECT * FROM MarksView;

INSERT INTO StudentDetails (S_ID, NAME, ADDRESS)
VALUES (6, 'Suresh', 'Gurgaon');

DELETE FROM DetailsView
WHERE NAME="Suresh";
SELECT * FROM DetailsView;

select * from StudentDetails;
select * from StudentMarks;