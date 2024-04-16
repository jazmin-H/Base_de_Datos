--1er este codigo me muestra estas cinco tablas del crimen; [date], [type], [description], [city]
SELECT * 
  FROM crime_scene_report
  --2do 
  SELECT * 
  FROM crime_scene_report
 WHERE date = "20180115" AND city = "SQL City" AND type = "murder"  
 --3ro  me muestra la informacion de estas tablas 
 SELECT id, name, license_id, address_number, address_street_name, ssn 
 FROM person
 --4to me muestra todos los testigos con el nombre de Annabel
 SELECT id, name, license_id, address_number, address_street_name, ssn 
 FROM person
 WHERE name like "Annabel%"
 --5to con max me muestra el maximo numero de las casas 
 SELECT id, name, license_id, max(address_number), address_street_name, ssn 
  FROM person 
 WHERE address_street_name = "Northwestern Dr"
 --6to busque con el id de los dos testigos su conferencia  
 SELECT person_id, transcript
  FROM interview
 WHERE person_id = "14887" or person_id = "16371"
 --7to me muestra quienes tiene la bolsa de oro con el numero 48Z
 SELECT *
  FROM get_fit_now_member
 WHERE id like "48Z%"