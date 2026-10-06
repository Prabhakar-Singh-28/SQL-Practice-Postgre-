-- INNER JOIN -- inner joins return rows that are the same in both columns
-- since we have the same columns we need to specify which table they're coming from

SELECT *
FROM employee_demographics
JOIN employee_salary -- by default its inner join
	ON employee_demographics.employee_id = employee_salary.employee_id
;

-- Ron Swanson isn't in the results? This is because he is not in the demographics table. his employee_id was NULL


-- use aliasing!
SELECT *
FROM employee_demographics D
INNER JOIN employee_salary S
	ON D.employee_id = S.employee_id
;

