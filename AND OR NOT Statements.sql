-- Create a database and table for storing employee data

CREATE DATABASE IF NOT EXISTS SimpleDB;

--  SimpleDB database
USE SimpleDB;
DESCRIBE Employees;

-- Using the `AND` operator
-- Example: Retrieve employees who are both 'Software Developer' and were hired after January 1, 2023
-- Both conditions must be true for a row to be included in the result

SELECT * FROM Employees
WHERE Position = 'Software Developer' AND HireDate > '2023-01-01';

-- Example Use Case for `AND`:
-- This is useful when you need to narrow down the results to records that meet multiple specific criteria.
-- Here, we're looking for employees who meet both conditions: specific job title and hire date.

-- Using the `OR` operator
-- Example: Retrieve employees who are either 'Software Developer' or 'Data Analyst'
-- At least one of the conditions must be true for a row to be included in the result

SELECT * FROM Employees
WHERE Position = 'Software Developer' OR Position = 'Data Analyst';

-- Example Use Case for `OR`:
-- This is useful when you want to retrieve records that match at least one of multiple conditions.
-- Here, we're interested in employees who are in either of the two job positions.

-- Combining `AND` and `OR` operators
-- Example: Retrieve employees who are either 'Software Developer' or 'Data Analyst' AND were hired after January 1, 2023
-- The `AND` condition applies to the result of the `OR` condition

SELECT * FROM Employees
WHERE (Position = 'Software Developer' OR Position = 'Data Analyst') AND HireDate > '2023-01-01';

-- Example Use Case for Combining `AND` and `OR`:
-- This allows for more complex queries. In this case, we're looking for employees in certain roles
-- who were also hired after a specific date. The parentheses ensure that the `OR` conditions are evaluated first.

-- Using the `NOT` operator
-- Example: Retrieve all employees who are NOT 'Software Developer'
-- The condition is negated, so it excludes any row where the Position is 'Software Developer'

SELECT * FROM Employees
WHERE NOT Position = 'Software Developer';

-- Example Use Case for `NOT`:
-- This is useful when you want to exclude records that match a certain condition.
-- Here, we're retrieving all employees except those who are 'Software Developer'.

-- Combining `AND`, `OR`, and `NOT` operators
-- Example: Retrieve employees who are either 'Data Analyst' or 'Project Manager' AND were NOT hired after January 1, 2023
-- We are mixing all three operators to achieve a more complex filter

SELECT * FROM Employees
WHERE (Position = 'Data Analyst' OR Position = 'Project Manager') AND NOT HireDate > '2023-01-01';

-- Example Use Case for Combining `AND`, `OR`, and `NOT`:
-- This combination can be used to precisely filter data according to complex rules. 
-- In this case, we want employees in specific roles, but we exclude those who were hired after a certain date.
