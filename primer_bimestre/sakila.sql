--1
select rating ,count(title)
from film
GROUP by rating
 --2
select f.title, count(c.name)
from category c 
join film_category fc  on c.category_id = fc.category_id
join film f on fc.film_id = f.film_id
GROUP by c.name
--3
select c.first_name, c.last_name, count(f.title)
from actor c
join film_actor fa on c.actor_id = fa.actor_id
join film f on fa.film_id = f.film_id
GROUP by c.first_name
order by count(f.title)DESC
limit 10 
--8
SELECT c.first_name, c.last_name, d.address, c.city, cc.country
FROM customer c
join address d on c.address_id = d.address_id
join city c on d.city_id = c.city_id
join country cc on c.country_id = cc.country_id