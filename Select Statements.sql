-- Create a database and table for storing employee data

CREATE DATABASE IF NOT EXISTS SimpleDB;

--  SimpleDB database
USE SimpleDB;

-- `Employees` table to see what columns we have
-- This step helps us understand what columns we might want to select

DESCRIBE Employees;

-- Using `SELECT *` to retrieve all columns from the `Employees` table
-- This will return every column (EmployeeID, FirstName, LastName, Position, HireDate) for every row in the table

SELECT * FROM Employees;

-- Example Use Case for `SELECT *`:
-- This is useful when you want to retrieve all the data for every employee,
-- especially when you don't know the column names in advance or need all the information.

-- Using `SELECT column` to retrieve specific columns
-- In this example, we'll retrieve only the FirstName, LastName, and Position columns from the `Employees` table

SELECT FirstName, LastName, Position FROM Employees;

-- Example Use Case for `SELECT column`:
-- This is useful when you only need specific data. For example, if you want to generate
-- a report showing only employee names and their job positions, you can use this approach.

-- Combining `SELECT column` with a WHERE clause
-- In this example, we'll retrieve the FirstName and Position of employees who were hired after January 1, 2023

SELECT FirstName, Position FROM Employees
WHERE HireDate > '2023-01-01';

-- Example Use Case for `SELECT column` with a WHERE clause:
-- This is useful when you want to filter the data based on specific criteria. For example,
-- finding only those employees who were hired recently, but you don't need to see all their information.

-- Using `SELECT *` with a WHERE clause
-- This example retrieves all the columns for employees who are 'Software Developer'

SELECT * FROM Employees
WHERE Position = 'Software Developer';

-- Example Use Case for `SELECT *` with a WHERE clause:
-- This is useful when you want to see all information for a subset of rows that meet certain criteria.
-- For example, you might want to analyze all the data related to employees in a specific job role.

-- Aliasing columns for better readability
-- You can also alias columns to give them more meaningful or shorter names in the result set.
-- Here, we'll alias FirstName as 'First' and LastName as 'Last'

SELECT FirstName AS First, LastName AS Last, Position AS JobTitle FROM Employees;

-- Example Use Case for Aliasing:
-- This is useful when the original column names are not user-friendly or when you're preparing data for reports
-- that require specific naming conventions.

-- `SELECT DISTINCT` to remove duplicates
-- If we want to see the distinct job positions (without duplicates), we can use `SELECT DISTINCT`

SELECT DISTINCT Position FROM Employees;

-- Example Use Case for `SELECT DISTINCT`:
-- This is useful when you want to retrieve unique values from a column, such as a list of unique job positions.

-- Combine multiple columns in a single `SELECT` statement
-- Here we can combine first and last names into a single column output using concatenation

SELECT CONCAT(FirstName, ' ', LastName) AS FullName, Position FROM Employees;

-- Example Use Case for Concatenation:
-- This is useful when you want to combine data from multiple columns into a single output for easier reading.
