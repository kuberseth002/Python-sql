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




DELIMITER //

CREATE PROCEDURE InsertStudent(
    IN p_rollno INT, 
    IN p_name VARCHAR(50), 
    IN p_marks INT, 
    IN p_grade VARCHAR(1), 
    IN p_city VARCHAR(20)
)
BEGIN
    -- Declare variables for error handling
    DECLARE EXIT HANDLER FOR 1062 
    BEGIN
        SELECT 'Error: Duplicate roll number!' AS Message;
    END;

    -- Insert Query
    INSERT INTO students (rollno, name, marks, grade, city) 
    VALUES (p_rollno, p_name, p_marks, p_grade, p_city);

    -- Success Message
    SELECT 'Student Inserted Successfully!' AS Message;

END //

DELIMITER ;

select * from students;

CALL InsertStudent(107, 'Rishi', 85, 'A', 'Mumbai');
CALL InsertStudent(106, 'Rishu', 75, 'C', 'Delhi');


