select city, country from city ci
left join country co
on ci.country_id = co.country_id;

select first_name, last_name from customer cu
right join payment pa
on cu.customer_id = pa.customer_id;

select first_name, last_name from customer cu
full join rental re
on cu.customer_id = re.customer_id;