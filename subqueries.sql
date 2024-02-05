select count(*) from film 
where length > (select AVG(length) from film);

select count(*) from film 
where rental_rate = (select max(rental_rate) from film);

select count(*) from film
where rental_rate = (select min(rental_rate) from film)
AND replacement_cost = (select min(replacement_cost) from film);

select cu.first_name, cu.last_name, count(pa.payment_id) as total_purchases 
from customer cu
inner join payment pa on pa.customer_id = cu.customer_id
group by cu.customer_id, cu.first_name, cu.last_name
order by total_purchases desc
limit 5;