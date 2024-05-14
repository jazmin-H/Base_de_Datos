-- 6) Contar la cantidad de miembros del 
-- gimnasio de cada categoría (gold, silver, 
-- etc), ordenadas desde la que tiene más 
-- miembros a la que tiene menos

select name, count(membership_status)
FROM get_fit_now_member
GROUP by membership_status
ORDER by count(membership_status) DESC