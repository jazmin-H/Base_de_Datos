SELECT count(e.first_name) as cant_empleado, d.department_name, sum(salary) FROM employees e
JOIN departments d on e.department_id = d.department_id
GROUP by department_name