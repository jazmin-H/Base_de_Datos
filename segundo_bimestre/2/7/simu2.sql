---1---
DELETE FROM employees
WHERE department_id = 2;

DELETE FROM departments
WHERE location_id = 1800;

DELETE FROM locations
WHERE country_id = "CA";

DELETE FROM countries
WHERE country_id = "CA";

----2---
SELECT first_name, last_name, department_name, country_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
WHERE l.country_id = "UK"
---3---
DELETE FROM jobs
WHERE job_id NOT IN (SELECT DISTINCT job_id FROM employees);

--4----
SELECT count(e.employee_id), avg(e.salary), j.max_salary, j.min_salary, j.job_title FROM employees e
JOIN jobs j on e.job_id = j.job_id
GROUP by j.job_id
HAVING count(e.employee_id) > 1
