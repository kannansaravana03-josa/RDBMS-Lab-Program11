CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    DepartmentID INT
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100)
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

INSERT INTO Student (StudentID, StudentName, DepartmentID)
VALUES
(1, 'Arun', 101),
(2, 'Priya', 102),
(3, 'Kumar', 101);

INSERT INTO Course (CourseID, CourseName)
VALUES
(201, 'Database Management System'),
(202, 'Computer Networks'),
(203, 'Operating Systems');

INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID)
VALUES
(1, 1, 201),
(2, 1, 202),
(3, 2, 203),
(4, 3, 201);

CREATE VIEW StudentDetails AS
SELECT
    s.StudentID,
    s.StudentName,
    s.DepartmentID,
    c.CourseID,
    c.CourseName
FROM Student s
JOIN Enrollment e
