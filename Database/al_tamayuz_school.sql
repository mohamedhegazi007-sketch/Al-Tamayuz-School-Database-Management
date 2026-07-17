-- =========================================================================
-- Al-Tamayuz School Database Management System (DBMS Project)
-- Designed & Coded by: Mohamed Ahmed Hegazi
-- Description: Centralized database for students, teachers, and subjects,
--              featuring advanced queries and performance tracking.
-- =========================================================================

-- 1. Create and Use Database
CREATE DATABASE IF NOT EXISTS al_tamayuz_school;
USE al_tamayuz_school;

-- =========================================================================
-- 2. Create Tables
-- =========================================================================

-- Create Teachers Table
CREATE TABLE IF NOT EXISTS teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    dob DATE NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    email VARCHAR(100) UNIQUE,
    office_number VARCHAR(20) NOT NULL
);

-- Create Subjects Table
CREATE TABLE IF NOT EXISTS subjects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

-- Create Students Table
CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    dob DATE NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    enrollment_date DATE NOT NULL,
    email VARCHAR(100) UNIQUE,
    grade_level INT CHECK (grade_level BETWEEN 1 AND 6),
    track VARCHAR(20) CHECK (track IN ('Scientific', 'Humanities')),
    gpa DECIMAL(5,2) CHECK (gpa BETWEEN 0.00 AND 100.00)
);

-- =========================================================================
-- 3. Mock Data Insertion (DML)
-- =========================================================================

-- Insert 10 Teachers
INSERT INTO teachers (name, dob, gender, email, office_number) VALUES
('Ahmed Mansour', '1980-05-15', 'M', 'ahmed.mansour@school.edu', 'Off-101'),
('Fatma Ali', '1985-08-22', 'F', 'fatma.ali@school.edu', 'Off-102'),
('Mohamed Hassan', '1978-12-10', 'M', 'mohamed.hassan@school.edu', 'Off-103'),
('Sarah Ibrahim', '1990-03-05', 'F', 'sarah.ibrahim@school.edu', 'Off-104'),
('Khaled Youssef', '1982-07-19', 'M', 'khaled.youssef@school.edu', 'Off-105'),
('Mona Mahmoud', '1987-10-30', 'F', 'mona.mahmoud@school.edu', 'Off-106'),
('Tarek Gamal', '1975-01-25', 'M', 'tarek.gamal@school.edu', 'Off-107'),
('Noha Adel', '1989-09-14', 'F', 'noha.adel@school.edu', 'Off-108'),
('Sherif Nour', '1983-11-03', 'M', 'sherif.nour@school.edu', 'Off-109'),
('Reem Samir', '1992-06-18', 'F', 'reem.samir@school.edu', 'Off-110');

-- Insert 6 Subjects
INSERT INTO subjects (name) VALUES
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology'),
('English Language'),
('History');

-- Insert 30 Students
INSERT INTO students (name, dob, gender, enrollment_date, email, grade_level, track, gpa) VALUES
('Amir Adel', '2010-04-12', 'M', '2025-09-01', 'amir.adel@student.com', 1, 'Scientific', 95.50),
('Aya Mansour', '2009-08-20', 'F', '2024-09-01', 'aya.mansour@student.com', 2, 'Humanities', 88.00),
('Ali Hassan', '2011-01-15', 'M', '2025-09-01', 'ali.hassan@student.com', 1, 'Scientific', 58.00), -- Aged 15, GPA < 60
('Bassem Nour', '2008-11-30', 'M', '2023-09-01', 'bassem.nour@student.com', 3, 'Scientific', 92.00),
('Dina Farouk', '2008-05-14', 'F', '2023-09-01', 'dina.farouk@student.com', 3, 'Humanities', 75.25),
('Ehab Samir', '2009-10-05', 'M', '2024-09-01', 'ehab.samir@student.com', 2, 'Scientific', 62.50),
('Farida Sherif', '2007-02-28', 'F', '2022-09-01', 'farida.sherif@student.com', 4, 'Humanities', 94.75),
('Gamil Wael', '2007-07-17', 'M', '2022-09-01', 'gamil.wael@student.com', 4, 'Scientific', 81.00),
('Hoda Mahmoud', '2006-03-25', 'F', '2021-09-01', 'hoda.mahmoud@student.com', 5, 'Humanities', 55.00), -- GPA < 60
('Iman Adel', '2006-09-09', 'F', '2021-09-01', 'iman.adel@student.com', 5, 'Scientific', 97.20),
('Kamal Tarek', '2005-12-12', 'M', '2020-09-01', 'kamal.tarek@student.com', 6, 'Scientific', 100.00), -- Level 6, GPA 100
('Laila Fouad', '2005-05-01', 'F', '2020-09-01', 'laila.fouad@student.com', 6, 'Humanities', 89.50),
('Maged Nour', '2010-02-14', 'M', '2025-09-01', 'maged.nour@student.com', 1, 'Scientific', 56.50), -- Aged 16, GPA < 60
('Nadia Adel', '2009-07-22', 'F', '2024-09-01', 'nadia.adel@student.com', 2, 'Humanities', 78.00),
('Omar Youssef', '2008-04-18', 'M', '2023-09-01', 'omar.youssef@student.com', 3, 'Scientific', 93.40),
('Rania Sayed', '2007-11-05', 'F', '2022-09-01', 'rania.sayed@student.com', 4, 'Humanities', 85.00),
('Samer Adel', '2006-06-30', 'M', '2021-09-01', 'samer.adel@student.com', 5, 'Scientific', 91.50),
('Tamer Nour', '2005-08-14', 'M', '2020-09-01', 'tamer.nour@student.com', 6, 'Scientific', 100.00), -- Level 6, GPA 100
('Yasmin Aly', '2005-10-25', 'F', '2020-09-01', 'yasmin.aly@student.com', 6, 'Humanities', 96.80),
('Ziad Karim', '2010-09-12', 'M', '2025-09-01', 'ziad.karim@student.com', 1, 'Scientific', 72.00),
('Anas Maher', '2009-03-15', 'M', '2024-09-01', 'anas.maher@student.com', 2, 'Scientific', 80.50),
('Asma Said', '2008-07-07', 'F', '2023-09-01', 'asma.said@student.com', 3, 'Humanities', 98.00),
('Amal Amin', '2007-05-19', 'F', '2022-09-01', 'amal.amin@student.com', 4, 'Scientific', 59.90), -- Name starts with A, GPA < 60
('Adam Wael', '2005-01-20', 'M', '2020-09-01', 'adam.wael@student.com', 6, 'Scientific', 99.10), -- 4-letter name
('Aser Nour', '2010-10-30', 'M', '2025-09-01', 'aser.nour@student.com', 1, 'Scientific', 84.50), -- 4-letter name, Level 1
('Mona Omar', '2009-12-05', 'F', '2024-09-01', 'mona.omar@student.com', 2, 'Humanities', 82.00), -- 4-letter name
('Noha Nour', '2008-02-18', 'F', '2023-09-01', 'noha.nour@student.com', 3, 'Scientific', 79.50), -- 4-letter name
('Hani Wael', '2007-06-25', 'M', '2022-09-01', 'hani.wael@student.com', 4, 'Humanities', 87.00), -- 4-letter name
('Ola Said', '2006-08-11', 'F', '2021-09-01', 'ola.said@student.com', 5, 'Scientific', 92.30),
('Hadi Emad', '2005-03-09', 'M', '2020-09-01', 'hadi.emad@student.com', 6, 'Scientific', 100.00); -- 4-letter name, Level 6, GPA 100

-- =========================================================================
-- 4. SQL Query Operations (DQL & DDL Modifications)
-- =========================================================================

-- Requirement: Display all tables
SHOW TABLES;
SELECT * FROM students;
SELECT * FROM teachers;
SELECT * FROM subjects;

-- Requirement: Display students sorted ascending by name
SELECT * FROM students ORDER BY name ASC;

-- Requirement: Display students with an alias for name
SELECT id, name AS 'Student Full Name', email, gpa FROM students;

-- Requirement: Update email of a specific student
UPDATE students SET email = 'amir.adel.new@student.com' WHERE id = 1;

-- Requirement: Update office number of a specific teacher
UPDATE teachers SET office_number = 'Off-200' WHERE id = 1;

-- Requirement: Modify Table Structure - Rename Table and change back
RENAME TABLE subjects TO school_subjects;
RENAME TABLE school_subjects TO subjects; -- Revert to keep schema intact

-- Requirement: Create table for excellent students (GPA > 90)
CREATE TABLE IF NOT EXISTS excellent_students AS
SELECT * FROM students WHERE gpa > 90.00;
SELECT * FROM excellent_students;

-- Requirement: Create table for failing students (GPA < 60)
CREATE TABLE IF NOT EXISTS failing_students AS
SELECT * FROM students WHERE gpa < 60.00;
SELECT * FROM failing_students;

-- Requirement: Display students whose name starts with 'A'
SELECT * FROM students WHERE name LIKE 'A%';

-- Requirement: Display students with 4-letter names
SELECT * FROM students WHERE name LIKE '____ %' OR name LIKE '____';

-- Requirement: Aggregate functions (AVG, MAX, MIN) on GPA
SELECT 
    AVG(gpa) AS 'Average GPA',
    MAX(gpa) AS 'Highest GPA',
    MIN(gpa) AS 'Lowest GPA'
FROM students;

-- Requirement: Level 6 excellent students with GPA = 100
SELECT * FROM students WHERE grade_level = 6 AND gpa = 100.00;

-- Requirement: Level 1 students aged 15-16
-- Assuming current year is 2026, students born in 2010 (16 years) or 2011 (15 years)
SELECT * FROM students 
WHERE grade_level = 1 
  AND YEAR(CURDATE()) - YEAR(dob) BETWEEN 15 AND 16;

-- Requirement: Count of students in Level 2
SELECT COUNT(*) AS 'Students in Level 2' FROM students WHERE grade_level = 2;

-- Requirement: Distinct tracks in the school
SELECT DISTINCT track AS 'Available Tracks' FROM students;

-- Requirement: Display subject names in UPPER case
SELECT UPPER(name) AS 'Subject Name' FROM subjects;

-- Requirement: Floor average GPA to nearest lower integer
SELECT FLOOR(AVG(gpa)) AS 'Floored Average GPA' FROM students;

-- Requirement: Replace gender CHAR with full string (CASE Statement)
SELECT 
    name, 
    gpa,
    CASE 
        WHEN gender = 'M' THEN 'Male'
        WHEN gender = 'F' THEN 'Female'
        ELSE 'Unknown'
    END AS 'Gender Details'
FROM students;

-- Requirement: Update GPAs below 60 by adding 5 marks
UPDATE students SET gpa = gpa + 5.00 WHERE gpa < 60.00;
SELECT * FROM students WHERE gpa < 65.00; -- Verify updates