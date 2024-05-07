--ejercicio 1---
SELECT department_name 
FROM departments 
order by department_name
---ejercicio 2---
SELECT salary
FROM employees 
GROUP by salary
order by salary DESC --ordena de mayor a menor el salario
---ejercicio 3---
SELECT   e.first_name, e.last_name, j.job_title, j.max_salary, j.min_salary
FROM employees e
JOIN jobs j on e.job_id = j.job_id
where j.job_title like "%manager%"
ORDER by max_salary DESC
---ejercicio 4---
SELECT   c.country_name as pais, r.region_name as region 
FROM countries c
JOIN regions r on c.region_id = r.region_id
ORDER by region ASC
---ejercicio 5--- 
SELECT   e.first_name, e.last_name, d.department_name, e.salary
FROM employees e
JOIN departments d on e.department_id = d.department_id
WHERE salary > 9000 AND salary < 17000
ORDER BY salary DESC
---ejercicio 6---
SELECT count(c.country_name) as pais , r.region_name
from countries c
join regions r on c.region_id = r.region_id
GROUP by r.region_name
HAVING count(c.country_name) > 5
ORDER by count(c.country_name)
---ejercicio 7 ---
SELECT min(hire_date), max(hire_date)
from employees
---ejercicio 8---
SELECT e.first_name as nombre_empleado, e.last_name as apellido_empleado, count(d.last_name) as cant_hijos from employees e
join dependents d on e.employee_id = d.employee_id
GROUP by nombre_empleado--agrupo los nombres de los empleados 
order by cant_hijos DESC
limit 5
---ejercicio 9--
SELECT first_name as nombre_empleado, last_name as apellido_empleado, salary
from employees 
GROUP by salary
ORDER by salary desc
limit 1 OFFSET 2--salta la cantidad q se le pide en este caso designe 2 