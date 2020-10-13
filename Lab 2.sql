/*Instructions

    Select all the actors with the first name ‘Scarlett’.
    Select all the actors with the last name ‘Johansson’.
    How many films (movies) are available for rent?
    How many films have been rented?
    What is the shortest and longest rental period?
    What are the shortest and longest movie duration? Name the values max_duration and min_duration.
    What's the average movie duration?
    What's the average movie duration expressed in format (hours, minutes)?
    How many movies longer than 3 hours?
    Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
    What's the length of the longest film title?
*/

use sakila;
--   Select all the actors with the first name ‘Scarlett’.

select * from actor where first_name='Scarlett';

--  Select all the actors with the last name ‘Johansson’.

select * from actor where last_name='Johansson';

--   How many films (movies) are available for rent?

select count(*) from film;

--     How many films have been rented?

select count(*) from rental;

--  What is the shortest and longest rental period?

select max(rental_duration), min(rental_duration) from film;

--   What are the shortest and longest movie duration? Name the values max_duration and min_duration.

select max(length) as max_duration, min(length) as min_duration from film;

--   What's the average movie duration expressed in format (hours, minutes)?

select SEC_TO_TIME(avg(length)*60) from film;
-- CONCAT(FLOOR(avg(length)/60),'h ',MOD(avg(length),60),'m') 
-- select CONCAT(FLOOR(avg(length)/60),' H ',MOD(avg(length),60),' M')  from film;


select count(*) from film where length > 180;

select concat(first_name,' ', last_name,' - ', email) from customer;
-- select concat(UPPER(left(first_name,1),1),LOWER(SUBSTRING(first_name,2),' ', last_name,' - ', email) from customer;

select max(length(title)) from film;


