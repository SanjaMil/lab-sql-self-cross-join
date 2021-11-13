use sakila;

-- 1. Get all pairs of actors that worked together.
select fa.actor_id, fa1.actor_id, fa.film_id, title from film_actor fa
join film_actor fa1
on fa.film_id =fa1.film_id 
and fa.actor_id <> fa1.actor_id
left join film on fa.film_id = film.film_id
order by fa.actor_id;
 

-- 2. Get all pairs of customers that have rented the same film more than 3 times.
select r.rental_id, r.customer_id from rental r -- count(r.rental_id) number_of_rent 
join rental r1 on r.rental_id = r1.rental_id
and r.customer_id <> r1.customer_id
group BY 1,2;
-- having number_of_rent>3;

-- 3. Get all possible pairs of actors and films.
select * from (select distinct actor_id from actor) sub1
cross join (select distinct film_id from film) sub2


