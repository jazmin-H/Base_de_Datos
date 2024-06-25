SELECT count(NOMBRE_ESTACION) as cant_estaciones FROM barcelona_viajeros_por_franja_xlsx

SELECT NOMBRE_ESTACION FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION

SELECT NOMBRE_ESTACION, sum(VIAJEROS_SUBIDOS) as total_subidos, sum(VIAJEROS_BAJADOS) as total_bajados
FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION
ORDER by NOMBRE_ESTACION DESC

SELECT NOMBRE_ESTACION, sum(VIAJEROS_SUBIDOS) as total_subidos, sum(VIAJEROS_BAJADOS) as total_bajados,  abs(sum(VIAJEROS_SUBIDOS - VIAJEROS_BAJADOS)) AS diferencia
FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION
ORDER by diferencia DESC

SELECT NOMBRE_ESTACION, max(VIAJEROS_SUBIDOS) as pasajeros , TRAMO_HORARIO
FROM barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO
ORDER by pasajeros DESC

SELECT NOMBRE_ESTACION, max(VIAJEROS_SUBIDOS), TRAMO_HORARIO
FROM barcelona_viajeros_por_franja_xlsx

SELECT NOMBRE_ESTACION, max(VIAJEROS_BAJADOS), TRAMO_HORARIO
FROM barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO
ORDER by VIAJEROS_BAJADOS DESC

SELECT NOMBRE_ESTACION, max(VIAJEROS_BAJADOS), TRAMO_HORARIO
FROM barcelona_viajeros_por_franja_xlsx

SELECT NOMBRE_ESTACION, TRAMO_HORARIO, (abs(VIAJEROS_SUBIDOS - VIAJEROS_BAJADOS))as mayor_diferencia
FROM barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO
ORDER by mayor_diferencia DESC

SELECT NOMBRE_ESTACION, sum(VIAJEROS_SUBIDOS), sum(VIAJEROS_BAJADOS), abs(sum(VIAJEROS_BAJADOS) - sum(VIAJEROS_SUBIDOS)) as diferencia
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION
ORDER BY diferencia DESC
LIMIT 1

SELECT round(avg(VIAJEROS_SUBIDOS + VIAJEROS_BAJADOS),2) as promedio , TRAMO_HORARIO
FROM barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO
ORDER by TRAMO_HORARIO DESC

SELECT NOMBRE_ESTACION, round(avg(VIAJEROS_SUBIDOS + VIAJEROS_BAJADOS),2) as promedio , TRAMO_HORARIO
FROM barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO
ORDER by TRAMO_HORARIO DESC