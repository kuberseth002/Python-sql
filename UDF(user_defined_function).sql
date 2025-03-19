USE College;

DELIMITER //

CREATE FUNCTION CheckPassFail(marks INT) 
RETURNS VARCHAR(10) 
DETERMINISTIC
BEGIN
    DECLARE result VARCHAR(10);
    
    IF marks >= 40 THEN
        SET result = 'Pass';
    ELSE
        SET result = 'Fail';
    END IF;
    
    RETURN result;
END //

DELIMITER ;

SELECT rollno, name, marks, CheckPassFail(marks) AS PassOrFail FROM students;

DELIMITER //

CREATE FUNCTION GetGrade(marks INT) 
RETURNS VARCHAR(2) 
DETERMINISTIC
BEGIN
    DECLARE grade VARCHAR(2);

    IF marks >= 90 THEN
        SET grade = 'A+';
    ELSEIF marks >= 80 THEN
        SET grade = 'A';
    ELSEIF marks >= 70 THEN
        SET grade = 'B';
    ELSEIF marks >= 60 THEN
        SET grade = 'C';
    ELSE
        SET grade = 'F';
    END IF;

    RETURN grade;
END //

DELIMITER ;
SELECT rollno, name, marks, GetGrade(marks) AS Grade
FROM students;
