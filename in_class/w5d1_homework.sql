-- 1. How many actors are there with the last name ‘Wahlberg’?

SELECT COUNT(last_name), last_name
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name;

-- Answer: 2

-- 2. How many payments were made between $3.99 and $5.99?

--break down of each count for amounts between 3.99 and 5.99
SELECT COUNT(amount), amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
GROUP BY amount;
--total count for amounts between 3.99 and 5.99
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Answer: 5607

-- 3. What film does the store have the most of? (search in inventory)

SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- Answer: 72 films have the most inventory of 8


-- 4. How many customers have the last name ‘William’?

SELECT * FROM customer;
SELECT COUNT(last_name), first_name, last_name
FROM customer
WHERE last_name = 'William'
GROUP BY first_name, last_name;

SELECT COUNT(last_name), first_name, last_name
FROM customer
WHERE last_name = 'Williams'
GROUP BY first_name, last_name;

-- Answer: I think there might be a typo, but if it is indeed 'William', I think it's 0.
-- If it was a typo and the last name is 'Williams', it should be 1.

-- 5. What store employee (get the id) sold the most rentals?

SELECT * FROM staff;
SELECT * FROM store;
SELECT * FROM rental;

SELECT COUNT(staff_id), staff_id
FROM rental
GROUP BY staff_id;

SELECT first_name, last_name, staff_id
FROM staff;

-- Answer: Mike Hillyer (staff_id = 1) sold 8040 rentals, Jon Stephens (staff_id = 2) sold 8004 rentals
-- Mike Hillyer sold more rentals

-- 6. How many different district names are there?

SELECT *
FROM address;

SELECT COUNT(DISTINCT district)
FROM address;

-- Answer: 378 different district names 

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

SELECT film_id, actor_id
FROM film_actor
WHERE film_id = 508;
-- double checking that for 508, I get 15 which shows code above is pulling correct amounts

SELECT title
FROM film
WHERE film_id = 508;
-- film_id = Lambs Cincinatti

-- Answer: Lambs Cincinatti (film_id 508) has most actors with 15 total actors

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT * FROM customer;

SELECT first_name, last_name, store_id
FROM customer
WHERE last_name LIKE '%es';
-- checking how many last_names ending with -es so I know how many names should come up for both stores
-- For store 1, it should be 13 names for the count

SELECT COUNT(last_name),
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1

-- Answer: Store 1 has 13 people with names ending with 'es'

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT *
FROM payment;

SELECT COUNT(rental_id), amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;

-- Answer: 3 payment amounts have rentals above 250 for customers with IDs between 380 and 430:
-- 2.99, 4.99, 0.99

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

SELECT *
FROM film;

SELECT DISTINCT rating
FROM film;

SELECT COUNT(film_id), rating
FROM film
GROUP BY rating
ORDER BY count(film_id) DESC;

-- Answer: There are 5 total ratings: PG-13, NC-17, R, G, PG
-- PG-13 has the mst movies: 223




