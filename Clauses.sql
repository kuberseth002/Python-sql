CREATE DATABASE hospital_db;
USE hospital_db;

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100)
);

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    disease VARCHAR(100),
    doctor_id INT,
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

INSERT INTO doctors (name, specialization) 
VALUES 
    ('Dr. Smith', 'Cardiologist'),
    ('Dr. Adams', 'Neurologist'),
    ('Dr. Patel', 'Dermatologist');

INSERT INTO patients (name, age, disease, doctor_id) 
VALUES 
    ('John Doe', 45, 'Heart Disease', 1),
    ('Emma Watson', 32, 'Migraine', 2),
    ('Robert Brown', 50, 'Skin Allergy', 3),
    ('Sophia Miller', 29, 'High BP', 1);
    
    select * from doctors;
    select * from patients;

-- where  clause
SELECT * FROM patients WHERE age > 40;

-- order by-- 
SELECT * FROM patients ORDER BY age ASC;

-- Having-- 
SELECT doctor_id, COUNT(*) AS total_patients 
FROM patients 
GROUP BY doctor_id 
HAVING COUNT(*) > 1;

-- limit clause-- 
SELECT * FROM patients LIMIT 2;


    
    

