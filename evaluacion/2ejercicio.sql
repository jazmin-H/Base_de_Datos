-- 2) Listar el nombre y los datos del auto
-- (marca, modelo y patente) de todos los
-- varones más de 70 años, elegir el orden
-- en que se muestran 
SELECT car_make, car_model, plate_number, gender, age
FROM drivers_license
WHERE gender = "male" and age > 70 
ORDER by car_make DESC--falta