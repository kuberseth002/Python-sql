USE school;

-- Primary Key Index (Automatically Created)-- 
CREATE TABLE StudentDetails (
    S_ID INT PRIMARY KEY, -- auto index
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
    ID INT PRIMARY KEY,  -- auto index
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

-- unique index
CREATE UNIQUE INDEX idx_unique_name ON StudentDetails(NAME);

-- Non-Clustered Index
CREATE INDEX idx_address ON StudentDetails(ADDRESS);
SELECT * FROM StudentDetails WHERE ADDRESS = 'Delhi';

-- Composite Index
CREATE INDEX idx_marks_age ON StudentMarks(Marks, Age);
SELECT * FROM StudentMarks WHERE Marks > 80 AND Age < 20;

-- Full-Text Index
ALTER TABLE StudentDetails ADD FULLTEXT INDEX idx_fulltext_name (NAME);
SELECT * FROM StudentDetails WHERE MATCH(NAME) AGAINST('Pra');

-- Drop index
DROP INDEX idx_marks_age ON StudentMarks;

