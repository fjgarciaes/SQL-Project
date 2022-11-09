-- Query para crear los id de la tabla old_hdd
CREATE TABLE old_HDD2
SELECT f.film_id, a.actor_id, od.title, od.name, od.category_id
FROM film f
INNER JOIN old_HDD od
ON f.title = od.title
INNER JOIN actor a
ON od.name = a.name
;

SELECT * FROM old_HDD2;
DROP TABLE old_HDD;
ALTER TABLE old_HDD2
RENAME TO old_HDD;

SELECT * FROM old_HDD;

alter table old_hdd
drop column title;

alter table old_hdd
drop column name;


select avg(rental_rate)
from film;
-- Idioma de cada pelicula
SELECT title, name from film as f 
left join language as l
on f.language_id= l.language_id
limit 10;

-- Genero de cada pelicula 
select distinct title, name from film as f 
inner join old_hdd as o
on f.film_id=o.film_id
inner join category as c
on o.category_id=c.category_id
limit 10;

-- Actores por pelicula--
select f.title, count(name) from film as f 
left join old_hdd as o
on f.film_id=o.film_id
left join actor as a
on o.actor_id=a.actor_id
group by f.title
order by count(name) desc
limit 10;


-- Crear una nueva tabla en la cual podemos ver si una pelicula es buena o mala basandonos en las puntuaciones
SELECT rental_rate ,
CASE WHEN rental_rate > 3.5 THEN 'GOOD FILM'
ELSE 'BAD FILM' 
END AS movie_rate
from film
limit 10;
-- Crear una tabla con una nueva columna basandonos en que si la pelicula tiene una duración de mas de 100 minutos se considera una pelicula larga y en caso contrario se considera una pelicula corta 
SELECT length,
CASE WHEN length > 100 THEN 'LONG FILM'
ELSE 'SHORT FILM' 
END AS movie_duration
from film
limit 10;
-- fecha de alquiler de una pelicula, su fecha de devolución y el titulo de la pelicula.
select title, rental_date, return_date
from film as f
inner  join inventory as i 
on f.film_id=i.film_id
inner join rental as r
on r.inventory_id=i.inventory_id
limit 10;
-- titulo de la pelicula y duración del alquiler 

select  distinct f.title, rental_duration
from film as f
inner  join inventory as i 
on f.film_id=i.film_id
inner join rental as r
on r.inventory_id=i.inventory_id
order by rental_duration desc
limit 10;

-- Peliculas ordenadas segun el coste de reemplazo 
select title, replacement_cost
from film
order by replacement_cost desc
limit 10;

-- Mejores peliculas de genero Music

select distinct title, name, rental_rate from film as f 
inner join old_hdd as o
on f.film_id=o.film_id
inner join category as c
on o.category_id=c.category_id
where name='Music'
order by rental_rate desc
limit 10;














