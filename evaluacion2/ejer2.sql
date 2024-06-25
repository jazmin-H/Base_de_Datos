SELECT first_name, last_name, department_name, country_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
WHERE country_name = "United States of America"