-- LIKE STATEMENT

-- two special characters " % "and " _ "
-- % means anything

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%a';


-- _ means a specific value

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A__';


SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A___%';
