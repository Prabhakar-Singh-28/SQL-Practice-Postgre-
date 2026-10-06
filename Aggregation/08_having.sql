-- HAVING 
-- filter rows based off aggregated columns when grouped

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

-- Having vs Where

-- Both were created to filter rows of data, but they filter 2 separate things
-- Where is going to filters rows based off columns of data
-- Having is going to filter rows based off aggregated columns when grouped

SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40   --- this doesn't work because order of operations 
GROUP BY gender
;
-- order of operations
-- Where comes before the group by, can't filter on data that hasn't been grouped yet

-- So we use HAVING 

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT gender, AVG(age) AS avg_age -- alias
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40  --- This doesnt work on Postgre SQL coz of processing order 
;

-- processing order 
-- FROM --> WHERE --> GROUP BY --> HAVING --> SELECT --> ORDER BY
-- avg_age is created in SELECT step

