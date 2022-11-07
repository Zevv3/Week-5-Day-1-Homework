-- 1. How many actors are there with the last name ‘Wahlberg’? 
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- 2

-- 2. How many payments were made between $3.99 and $5.99? 
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- 5607

-- 3. What film does the store have the most of? (search in inventory) 
SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
-- There are many films with 8, id 193 is the first on my list

-- 4. How many customers have the last name ‘William’? 
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'William';
-- None

-- 5. What store employee (get the id) sold the most rentals? 
SELECT COUNT(staff_id), staff_id
FROM rental
GROUP BY staff_id;
-- Staff_id 1 sold 36 more rentals

-- 6. How many different district names are there? 
SELECT COUNT(district), district
FROM address
GROUP BY district
ORDER BY COUNT(district) DESC;
-- 378

-- 7. What film has the most actors in it? 
-- (use film_actor table and get film_id) 
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;
-- film_id 508 has 15 actors

-- 8. From store_id 1, how many customers have a last name 
-- ending with ‘es’? (use customer table) 
SELECT COUNT(customer_id), store_id
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id
ORDER BY COUNT(customer_id);
-- 13

-- -- 9. How many payment amounts (4.99, 5.99, etc.) had a 
-- number of rentals above 250 for customers  with ids 
-- between 380 and 430? use group by and having > 250) 
SELECT COUNT(rental_id), amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;
-- 3

-- 10. Within the film table, how many rating categories are there? 
-- And what rating has the most  movies total?
SELECT COUNT(film_id), rating
FROM film
GROUP BY rating
ORDER BY COUNT(film_id);
-- 5 ratings, PG-13 has the most films at 223 films