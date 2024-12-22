-- Day 1: MSSQL Basics

-- Step 1: Creating a database
CREATE DATABASE EmployeeDB;
GO

-- Step 2: Using the database
USE EmployeeDB;
GO

-- Step 3: Creating a table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Age INT,
    Department NVARCHAR(50)
);
GO

-- Step 4: Inserting data into the table
INSERT INTO Employees (EmployeeID, Name, Age, Department)
VALUES 
    (1, 'Aditi', 24, 'Data Science'),
    (2, 'Raj', 30, 'Engineering'),
    (3, 'Sneha', 28, 'Marketing');
GO
