SELECT 
FROM actor;

SELECT first_name, last_name FROM actor;

SELECT concat(first_name, last_name) AS full_name
FROM actor;


SELECT * FROM customer;
SELECT *
FROM actor
WHERE first_name = 'Nick';

SELECT * FROM customer;
SELECT *
FROM actor
WHERE first_name LIKE 'Nick';

SELECT first_name, last_name
FROM actor
WHERE first_name , last_name 
FROM actor
WHERE first_name LIKE 'N%';

--query actor FOR actors WITH FIRST name starting WITH k AND ONLY 3 letters
SELECT first_name, last_name
FROM actor
WHERE first_name  LIKE 'K___';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%th';

INSERT INTO actor(first_name, last_name)Values('Keith', 'Smith');

SELECT *
FROM payment;

SELECT customer_id, amount
FROM payment
WHERE amount > 2.00;

SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;
ORDER my amount DESC;

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
WHERE amount != 0;

SELECT * FROM LANGUAGE

select * FROM film

SELECT *
FROM film
WHERE language_id = 1;

--Aggregators

SELECT count(film_id)
FROM film;

SELECT count(film_id)
FROM film
WHERE language_id =2;

selct *
FROM payment;

SELECT * FROM inventory;

SELECT count(inventory_id)
FROM inventory;
GROUP BY store_id;

SELECT *
FROM payment;

SELECT sum(amount)
FROM payment;

SELECT sum(amount), customer_id
FROM payment
GROUP BY customer_id
ORDER BY sum(amount) DESC;

SELECT avg(amount)
FROM payment
WHERE amount > 5.99;

SELECT count(payment_id)
FROM payment
WHERE amount >5.99;

SELECT DISTINCT amount
FROM payment;
--how many payments were made from each amount?  for each distinct amount?

SELECT count(amount), amount
FROM payment;
GROUP BY distint amount;

SELECT min(amount) AS "min_amount_above_7.99"
FROM payment
WHERE amount > 7.99;

SELECT max(amount) AS 'max amount', customer_id
FROM payment;

SELECT max(amount) AS "max amount", customer_id
FROM payment
GROUP BY customer_id;

SELECT count(payment_id), cutomer_id
FROM payment
GROUP BY customer_id;
HAVING count(payment_id) > 20;












