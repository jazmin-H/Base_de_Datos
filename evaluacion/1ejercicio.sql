-- 1) Mostrar todas las ciudades donde se 
-- reportaron asesinatos. 
-- Las ciudades deben estar en orden alfabético
-- y no debe haber repetidos

SELECT city
FROM crime_scene_report
GROUP by city
ORDER by city 

