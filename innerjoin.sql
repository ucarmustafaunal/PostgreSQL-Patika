select city.city, country.country from city
inner join country
on country.country_id = city.country_id;

select p.payment_id, c.customer_id, first_name, last_name from customer c
inner join payment p
on p.customer_id = c.customer_id;

select r.rental_id, c.first_name, c.last_name from customer c
inner join rental r
on c.customer_id = r.customer_id;