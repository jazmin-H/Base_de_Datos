UPDATE employees set salary = salary * 1.20
WHERE employee_id = (SELECT department_name ,salary FROM employees e
                     JOIN departments d on e.department_id = d.department_id
					 WHERE salary < 8000)
---esta incompleto---