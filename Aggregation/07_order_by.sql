-- ORDER BY clause:
-- sort the result-set in ascending (ASC) or descending(DESC) order, ascending order by default

SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

-- multiple columns

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY gender ASC, age DESC;
