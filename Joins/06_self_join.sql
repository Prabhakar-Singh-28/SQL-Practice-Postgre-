-- SELF JOIN 
-- a regular join operation where a table is joined with itself

-- 1. display each employee's name along with their manager's name from employees table.

SELECT e.employee_name AS Employee, m.employee_name AS Manager
FROM employees e
JOIN employees m
	ON e.manager_id = m.employee_id
;


