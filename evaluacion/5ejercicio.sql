-- 5) Encontrar la edad mínima, máxima y promedio
-- de las mujeres que tienen licencia de conducir

SELECT gender, min(age), max(age), avg(age)
from drivers_license
where gender = "female"
