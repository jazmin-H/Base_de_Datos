---ejercicio 1---
INSERT into regions(region_id,region_name)
VALUES (5, "Africa"), (6, "Middle east");
-----ejercicio 2---
UPDATE countries SET region_id = 5
WHERE country_id = "EG" OR country_id = "NG" OR country_id = "ZM" OR country_id = "ZW" 

UPDATE countries SET region_id = 6
WHERE country_id = "IL" OR country_id = "KW"

----EJERCICIO 3-----
DELETE FROM countries
WHERE region_id in (SELECT region_id FROM regions
                    WHERE region_id = 4)
					
DELETE FROM regions
WHERE region_id in (SELECT region_id FROM regions
                    WHERE region_id = 4)
----ejercicio 4----
INSERT into countries(country_id, country_name, region_id)
VALUES ("MG", "Madagascar", 5), ("CR", "Camerùn", 5), ("JN", "Jordania", 6), ("IK", "Irak", 6);
----ejercicio 5----
INSERT into regions(region_id,region_name)
VALUES (7, "Middle east and Africa")
-----ejercicio 6----
UPDATE countries SET region_id = 7
WHERE region_id IN (SELECT region_id from countries
                      WHERE region_id = 5 or region_id = 6);

