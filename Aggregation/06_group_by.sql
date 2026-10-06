-- Group By

SELECT *
FROM employee_demographics
;
-- Groups together rows that have the same values in the specified column or columns 
-- and run aggregate functions on them
-- You have to have the same columns you're grouping on in the group by statement

SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT occupation
FROM employee_salary
GROUP BY occupation
;

SELECT gender, age
FROM employee_demographics
GROUP BY gender, age
;

-- perform out aggregate functions
-- AGGREGATE FUNCTIONS (MIN(), MAX(), COUNT(),AVG())

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;

SELECT gender, MIN(age), MAX(age), COUNT(age),AVG(age)
FROM employee_demographics
GROUP BY gender
;
