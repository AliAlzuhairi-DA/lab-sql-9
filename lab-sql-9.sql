-- Create a table rentals_may to store the data from rental table with information for the month of May.

create table rentals_may as
SELECT* 
from rental
where month(rental_date) = 5;

-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

insert into rentals_may
select*
from rental
where month(rental_date) = 5;

-- Create a table rentals_june to store the data from rental table with information for the month of June.

create table rentals_june as
select *
from rental
where month(rental_date) = 6;

-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

insert into rentals_june
select *
from rental
where month(rental_date) = 6;

-- Check the number of rentals for each customer for May.

SELECT 
    customer_id, COUNT(rental_id) AS rental_count
FROM
    rentals_may
GROUP BY customer_id
ORDER BY rental_count DESC;
-- Check the number of rentals for each customer for June.

SELECT 
    customer_id, COUNT(rental_id) AS rental_count
FROM
    rentals_june
GROUP BY customer_id
ORDER BY rental_count DESC;



