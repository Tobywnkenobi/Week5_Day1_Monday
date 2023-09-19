--"How many actors are there with the last name "Wahlberg"?

SELECT *
FROM actor
WHERE last_name = 'wahlberg'
GROUP BY last_name;

--Output:2

--How many payments were made between $3.99 and $5.99?

SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
ORDER BY amount DESC;

--output 3000

--What film does the store have the most of?(search inventory)

SELECT film_id, count(inventory_id) AS num_copies
FROM inventory
GROUP BY film_id
ORDER BY num_copies DESC;

-- output:  72 way tie

--4. How many customers have the last name ‘William’?

SELECT *
FROM customer
WHERE last_name LIKE 'William'

-- output: No one

--5. What store employee (get the id) sold the most rentals?

SELECT staff_id, sum(amount) AS total_amount
FROM payment
GROUP BY staff_id
ORDER BY total_amount desc;


-- output: employee #2 eeks it out.

--6. How many different district names are there?

-- output:
--7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT film_id, count(actor_id) AS act_count
FROM film_actor
GROUP BY film_id
ORDER BY act_count DESC;

-- output: Lamb's cincinatti, with 15 actors

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT count(*)
FROM customer
WHERE last_name LIKE '%es'

-- output: 21

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers

SELECT amount, count(rental_id) AS rental_count
FROM payment
GROUP BY amount
HAVING count(rental_id) > 250;

-- output: 9

--with ids between 380 and 430? (use group by and having > 250)

SELECT amount, count(rental_id)
FROM payment
WHERE rental_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(rental_id) > 250;

-- output: I am returning none, but not sure if that is correct. and I realize now that I did this as two seperate problems.

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

SELECT rating, film_id
FROM film

--output: 