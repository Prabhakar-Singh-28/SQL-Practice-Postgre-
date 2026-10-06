-- LIMIT and ALIASING

-- Limit -> specify how many rows you want in the output

SELECT *
FROM employee_demographics
LIMIT 3;

-- if we change something like the order or use a group by it would change the output

SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3;

-- LIMIT and OFFSET

-- LIMIT --> No. of rows you want
-- OFFSET --> No. of rows to Skip
-- LIMIT 3 OFFSET 2; --> skip 2 row and return next 3 rows

SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3 OFFSET 2;

-- select the third oldest person

SELECT *
FROM employee_demographics
ORDER BY age desc
LIMIT 1 OFFSET 2;

-- ALIASING
-- change the name of the column
-- mostly used in JOINS
-- keyword -- AS

SELECT gender, AVG(age) AS Avg_age
FROM employee_demographics
GROUP BY gender     --- using aggregate function Group By is must
;

