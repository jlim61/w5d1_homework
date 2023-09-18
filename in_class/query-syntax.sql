SELECT *
FROM actor;

SELECT first_name, last_name FROM actor;

SELECT CONCAT(FIRST_name, ' ', last_name)AS full_name
FROM actor;

SELECT * FROM customer;

SELECT *
FROM actor
WHERE first_name = 'Nick';

SELECT *
FROM actor
WHERE first_name LIKE 'Nick';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'N%';

-- query actor for actors with first name starting with k and only 3 letters
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

-- query for first name starting with K followed by 2 character, then any number of characters and must end with th
INSERT INTO actor(first_name,last_name)Values(
'keith','smith');

INSERT INTO actor(first_name,last_name)Values(
'kith','smith');

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%th';

SELECT *
FROM payment;

SELECT customer_id, amount
FROM payment
WHERE amount > 2.00
ORDER BY amount ASC;

SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99
ORDER BY amount DESC;

SELECT amount, customer_id
FROM payment
WHERE amount >= 2.99
ORDER BY amount ASC;

SELECT amount, customer_id
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99
ORDER BY amount DESC;

SELECT amount, customer_id
FROM payment
WHERE amount = 0;

-- say not equal to
SELECT amount, customer_id
FROM payment
WHERE amount <> 0; -- you can also do !=

SELECT * FROM LANGUAGE

SELECT *
FROM film
WHERE language_id = 1;

-- Aggregators

SELECT COUNT(film_id),(language_id)
FROM film
GROUP BY language_id;

SELECT COUNT(film_id)
FROM film
WHERE language_id = 1;

SELECT *
FROM payment;

SELECT * FROM inventory;

SELECT COUNT(inventory_id), store_id
FROM inventory
GROUP BY store_id;

SELECT *
FROM payment;

SELECT SUM(amount), customer_id
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT AVG(amount)
FROM payment;

SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

SELECT DISTINCT amount, COUNT(amount)
FROM payment
GROUP BY amount;

SELECT COUNT(DISTINCT amount)
FROM payment;

SELECT MIN(amount) AS "min_amount_above_7.99"
FROM payment
WHERE amount > 7.99;

SELECT MAX(amount) AS "max_amount"
FROM payment;

SELECT MAX(amount) AS "max_amount", customer_id
FROM payment
WHERE customer_id = 184
GROUP BY customer_id;

-- how many customers have made more than 20 payments
SELECT COUNT(payment_id), customer_id
FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) > 20;



