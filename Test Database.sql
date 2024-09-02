-- Create a database and table for storing employee data

CREATE DATABASE IF NOT EXISTS SimpleDB;

-- Use the created database
USE SimpleDB;

-- The table will include columns for EmployeeID, FirstName, LastName, Position, and HireDate

CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT, -- Primary key with auto-increment
    FirstName VARCHAR(50) NOT NULL,            -- Employee's first name (up to 50 characters)
    LastName VARCHAR(50) NOT NULL,             -- Employee's last name (up to 50 characters)
    Position VARCHAR(50) NOT NULL,             -- Job position/title
    HireDate DATE NOT NULL                     -- Date the employee was hired
);

-- Generate some sample data to test the table

INSERT INTO Employees (FirstName, LastName, Position, HireDate)
VALUES 
('John', 'Doe', 'Software Developer', '2023-01-15'),
('Jane', 'Smith', 'Data Analyst', '2022-03-22'),
('Emily', 'Johnson', 'Project Manager', '2021-11-05'),
('Michael', 'Brown', 'QA Engineer', '2023-06-30');

-- Retrieve all data from the Employees table

SELECT * FROM Employees;

--Find all employees hired after a specific date

SELECT * FROM Employees
WHERE HireDate > '2023-01-01';

-- Find all employees with a specific job position

SELECT * FROM Employees
WHERE Position = 'Software Developer';

-- If you want to remove the table and start over, you can use the following command:

-- DROP TABLE Employees;

-- Optional: Drop the database if you want to remove everything
-- DROP DATABASE SimpleDB;
