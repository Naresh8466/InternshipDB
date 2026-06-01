//Create a Database

CREATE DATABASE InternshipDB;
GO

USE InternshipDB;
GO

//Create Employees Table

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Email VARCHAR(100) NULL
);

//Insert Records

INSERT INTO Employees
(EmployeeID, EmployeeName, Department, Salary, Email)
VALUES
(1, 'Naresh', 'IT', 50000, 'naresh@gmail.com');

INSERT INTO Employees
(EmployeeID, EmployeeName, Department, Salary, Email)
VALUES
(2, 'Ravi', 'HR', 40000, NULL);

INSERT INTO Employees
(EmployeeID, EmployeeName, Department, Salary)
VALUES
(3, 'Suresh', 'Finance', 45000);

//View Data
SELECT * FROM Employees;

//Update Data

UPDATE Employees
SET Salary = 55000
WHERE EmployeeID = 1;

UPDATE Employees
SET Department = 'Administration'
WHERE Department = 'HR';

//Delete Data

DELETE FROM Employees
WHERE EmployeeID = 3;

//Check NULL Values

SELECT *
FROM Employees
WHERE Email IS NULL;

//Use Default Constraint

CREATE TABLE Students
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    City VARCHAR(50) DEFAULT 'Hyderabad'
);
//Insert Records

INSERT INTO Students
(StudentID, StudentName)
VALUES
(101, 'Kiran');

//view Data Students

SELECT * FROM Students;