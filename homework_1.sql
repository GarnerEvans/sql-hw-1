select * from actor

--1. How many actors are there with the last name Whalberg
select count(last_name)
from actor
where last_name like 'Wahlberg';
--Answer: 2

select * from payment

--2.payments between 3.99 and 5.99
select count(amount)
from payment p
where amount > 3.99 and  amount < 5.99;
--answer: 3,236

select * from inventory
--3.what fil does the store have the most of?
select film_id, count(film_id )
from inventory
group by film_id
order by count desc;
--answer: the key says film 200 but film 200 is one of many with eight films as 
--corroborated by the following query

select film_id
from inventory
where film_id = 200;

4. --how many customers with last name william
select * from customer

select last_name
from customer
where last_name like 'William';
--answe : 0

--5. what store empliyee sold the most rentals
select * from rental r 

select staff_id, count(staff_id)
from rental
group by staff_id 
order by count desc;
--answer: staff id 1 sold the most at 8,040

--6. how many dif district names are there
select * from address a 

select district, count(distinct district)
from address 
group by district 
--answer: 378

--what film has the most actors in it
select * from film_actor

select film_id, count(film_id)
from film_actor
group by film_id
order by count desc;
answer: film_id 508 has the most actors with 15

-- how many customers have a last name ending with 'es'?
select * from customer c 

select store_id, last_name
from customer
where last_name like '%_es' and store_id = 1;
--answer: 13

-- how many payments amounts had a number of rentals above 250
--for customers whose ids between  380 and 430
select * from payment

select count(amount), count(customer_id), amount, customer_id
from payment p 
where customer_id > 380 and customer_id < 430
group by customer_id, amount
having count(amount) > 250;
--answer: I am continually getting that there are zero payment amounts used more than 
--250 times for the customers with the specified id's


select * from film

select count(distinct rating),
rating,
count(rating)
from film
group by rating;
--answer: 5 categories pg-13 with 223






















