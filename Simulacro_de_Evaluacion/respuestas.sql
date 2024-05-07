--punto 1--
SELECT title --selecciono titulo 
FROM film  --desde peliculas
ORDER BY title --y ordeno alfabeticamente
--punto 2--
SELECT rating
FROM film_list
GROUP BY rating--agrupa lo q se repite 
ORDER BY rating 
--punto 3--
SELECT rental_rate, title
FROM film
WHERE rating = "PG" or "PG-13"--donde rating sea igual a esos datos
ORDER BY rental_rate DESC, title --de menor a mayor
--punto 4--
SELECT c.city, cc.country--re nombro a city como "c" y a country como "cc"
FROM city c-- desde city
JOIN country cc on c.country_id = cc.country_id-- comparo el c.country de city con el cc.country de country
--punto 5--
SELECT c.country, count(cc.city)--selecciono c conuntry y cc city (count para contar la cantidAD DE ciudades)
FROM country c -- desde country c
join city cc on cc.country_id = c.country_id--compara cc country con c country 
GROUP by c.country--agrupa c country
order by count(cc.city) DESC --ordena de mayor a menor cc city 
--punto 6--
SELECT c.country AS paises, count(cc.city) as ciudades--as es para poner un nombre
FROM country c
join city cc on cc.country_id = c.country_id
GROUP by c.country
HAVING ciudades > 2--se usa para group 
order by ciudades DESC
--punto 7--
SELECT min(rental_date), max(rental_date)--selleccionamos el minimo y maximo de rental_date
from rental --desde rental
where return_date is NOT NULL--donde el retorno de los alquileres no aparesca vacio
--punto 8--
me falta  
