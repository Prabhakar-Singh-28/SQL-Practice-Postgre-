-- Where clause 

-- The WHERE clause is used to filter records (rows of data)
-- It's going to extract only those records that fulfill a specified condition, effecting the rows, not the columns

-- COMPARISON OPERATORS (>,<, >=, <=, !=)

SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_demographics
WHERE gender = 'Female';


SELECT *
FROM employee_demographics
WHERE gender != 'Female';

-- Using WHERE clause with date value

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';
