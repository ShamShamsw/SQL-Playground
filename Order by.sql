CREATE DATABASE IF NOT EXISTS SimpleDB;
USE SimpleDB;
DESCRIBE Employees;

-- Using `ORDER BY` with a single column in ascending order
-- Example: Retrieve all employees ordered by their HireDate in ascending order (oldest to newest)
-- Note: `ASC` is optional as it is the default sorting order

SELECT * FROM Employees
ORDER BY HireDate ASC;

-- Example Use Case for `ORDER BY` with a single column in ascending order:
-- This is useful when you want to see the data sorted from the earliest to the most recent hire date,
-- helping to track employee tenure.

-- Using `ORDER BY` with a single column in descending order
-- Example: Retrieve all employees ordered by their HireDate in descending order (newest to oldest)

SELECT * FROM Employees
ORDER BY HireDate DESC;

-- Example Use Case for `ORDER BY` with a single column in descending order:
-- This is useful when you want to see the most recently hired employees first.

-- Using `ORDER BY` with multiple columns
-- Example: Retrieve all employees ordered by Position in ascending order and, within each Position, by HireDate in descending order

SELECT * FROM Employees
ORDER BY Position ASC, HireDate DESC;

-- Example Use Case for `ORDER BY` with multiple columns:
-- This is useful when you want to group employees by their Position and, within each group, see the most recently hired employees first.

-- Using `ORDER BY` with multiple columns and mixed sorting orders
-- Example: Retrieve all employees ordered by LastName in ascending order and, within the same last name, by FirstName in ascending order, and within the same first and last name, by HireDate in descending order

SELECT * FROM Employees
ORDER BY LastName ASC, FirstName ASC, HireDate DESC;

-- Example Use Case for `ORDER BY` with multiple columns and mixed sorting orders:
-- This is useful when you want to ensure that employees with the same last name are grouped together,
-- sorted by first name, and then, for any employees with the same first and last name, sorted by the most recent hire date.

-- Using `ORDER BY` with column aliases
-- Example: Using an alias for a concatenated full name and ordering by it
-- Here we concatenate the FirstName and LastName into a FullName column and then sort by FullName

SELECT CONCAT(FirstName, ' ', LastName) AS FullName, Position, HireDate
FROM Employees
ORDER BY FullName ASC;

-- Example Use Case for `ORDER BY` with column aliases:
-- This is useful when you've created a virtual column (like FullName) and want to order the results based on this new column.
