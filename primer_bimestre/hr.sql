
--Act 1---
SELECT  first_name, last_name, salary FROM employees WHERE salary  <  6000 
--Act 2--
SELECT  e.first_name, e.last_name, d.department_name, l.city, l.state_province FROM employees e
JOIN departments d on e.department_id = d.department_id 
JOIN locations l on l.location_id = d.location_id
-- selecciono mezclamos los archivos de distintos departamentos usando el join y abrebiamos los departamentos ya q hay archivos iguales para no confundirlo
--Act 3--
SELECT e.first_name, e.last_name, m.first_name FROM employees e JOIN employees m ON e.employee_id = m.manager_id
ORDER BY m.manager_id
-- 
 --Act 4--
SELECT e.first_name AS nomPadres, e.last_name, d.first_name from employees e
JOIN dependents d ON e.employee_id = d.employee_id
ORDER by e.last_name ASC 
--Act 5--
SELECT e.first_name, j.job_title, j.max_salary from employees e
join jobs j on e.job_id = j.job_id
order by max_salary DESC
