--- Select statement -- 
-- the SELECT statement is used to work with columns and specify what columns you want to work see in your output

-- select everything
SELECT * 
FROM employee_demographics;

-- selecting a specific column
SELECT first_name
FROM employee_demographics;

-- add some more columns, we just need to separate the columns with column
SELECT first_name, last_name
FROM employee_demographics;

-- calculation in the select statement
-- PEMDAS which stands for Parenthesis, Exponent, Multiplication, Division, Addition, subtraction

SELECT first_name, 
last_name,
salary,
(salary + 100) * 10
FROM employee_salary;

-- DISTINCT Statement - this will return only unique values in output
SELECT dept_id
FROM employee_salary;

SELECT DISTINCT dept_id
FROM employee_salary;

