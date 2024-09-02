CREATE DATABASE IF NOT EXISTS SimpleDB;
USE SimpleDB;
DESCRIBE Employees;

-- SELECT * FROM Employees;
-- SELECT * FROM Employees WHERE Position = 'Manager';

SELECT * FROM Employees
WHERE Position IS NULL;

-- SELECT * FROM Employees WHERE Position IS NOT NULL;
-- SELECT * FROM Employees WHERE Position IS NOT NULL AND Salary > 50000;

SELECT * FROM Employees
WHERE Position IS NOT NULL;
