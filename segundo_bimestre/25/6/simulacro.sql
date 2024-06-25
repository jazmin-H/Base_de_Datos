----1----
SELECT e.first_name, department_name, state_province, e.salary, m.first_name 
FROM employees e
JOIN employees m ON e.employee_id = m.manager_id
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id

----2----
UPDATE jobs set min_salary = min_salary * 0.75, max_salary = max_salary * 0.75
----3---

DELETE FROM employees
WHERE job_id in (SELECT e.job_id FROM employees e  
                 JOIN jobs j on e.job_id = j.job_id
                 WHERE e.salary > j.max_salary)
