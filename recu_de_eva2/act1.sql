---1---
SELECT 
    j.job_title AS job_title,
    COUNT(e.employee_id) AS employee_count,
    SUM(e.salary) AS total_salary
FROM 
    jobs j
LEFT JOIN 
    employees e ON j.job_id = e.job_id
GROUP BY 
    j.job_title
ORDER BY 
    employee_count DESC;

---2---
SELECT first_name, last_name, job_title, department_name, city FROM employees e
JOIN jobs j on e.job_id = j.job_id
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id

---3---
UPDATE employees
SET salary = salary * 1.55
WHERE salary < 7500 AND department_id IN (
    SELECT department_id FROM departments WHERE department_name = "IT" OR department_name = "Finance"
);
---4---
DELETE FROM employees
WHERE department_id = 2;

DELETE FROM departments
WHERE location_id = 1800;

DELETE FROM locations
WHERE country_id = "CA";

DELETE FROM countries
WHERE country_id = "CA";
---5--

UPDATE employees set phone_number = "333.444.555"
WHERE job_id = 15

---6---
INSERT into departments(department_id, department_name, location_id)
VALUES (12, "consultants", 1700)

INSERT into jobs(job_id, job_title, min_salary, max_salary)
VALUES (20, "consultant", 5000.0, 8000.0)

INSERT into employees(first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
VALUES ("Raul", "Lopez", "rlopez@gmail.com", "333.444.555", "2024-07-01", 20, 5000, 105, 12);

INSERT into employees(first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
VALUES ("Andres", "gonzales", "agonzales@gmail.com", "333.444.555", "2024-07-01", 20, 6000, 106, 12);

INSERT into employees(first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
VALUES ("Laura", "Fernandez", "lfernandez@gmail.com", "333.444.555", "2024-07-01", 20, 7500, 107, 12);