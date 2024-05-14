-- 7) Mostrar los nombres, numeros de seguridad social
-- (ssn), id de membresía y tipo de membresía de
-- las personas que fueron al gimnasio aunque sea una
-- vez durante el 2018. Los resultados deben estar
-- ordenados de manera que los de un mismo tipo de
-- membresía (gold, silver, etc) aparezcan todos 
-- seguidos y dentro de cada una ordenados por ssn. 

select g.name, p.ssn, g.membership_status, g.membership_start_date
FROM person p
JOIN get_fit_now_member g on p.id = g.id 
WHERE membership_start_date like "%2018%"