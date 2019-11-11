-- 1
SELECT Count(e.emp_name), 
        d.dept_name
FROM employee e 
INNER JOIN department d 
ON e.department = d.id 
WHERE d.dept_name = 'Sales' 
GROUP BY d.dept_name; 

-- 2
SELECT e.emp_name,
        p.project_name
FROM employee e
JOIN employee_project ep
ON e.id = ep.emp_id
JOIN project p
ON ep.project_id = p.id
WHERE p.project_name = 'Plan christmas party';

-- 3
SELECT e.emp_name
FROM employee e
JOIN department d
ON e.department = d.id
JOIN employee_project ep
ON e.id = ep.emp_id
JOIN project p
ON ep.project_id = p.id
WHERE d.dept_name = 'Warehouse'
AND p.project_name = 'Watch paint dry';

-- 4
SELECT e.emp_name,
        p.project_name,
        d.dept_name
FROM employee e
JOIN department d
ON e.department = d.id
JOIN employee_project ep
ON e.id = ep.emp_id
JOIN project p
ON ep.project_id = p.id
WHERE d.dept_name = 'Sales';

-- 5
SELECT e.emp_name AS Managers
FROM department d
JOIN employee e
ON d.manager = e.id
JOIN employee_project ep
ON e.id = ep.emp_id
JOIN project p
ON ep.project_id = p.id
WHERE p.project_name = 'Watch paint dry';


