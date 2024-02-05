select distinct(replacement_cost) from film;

select count(distinct(replacement_cost)) from film;

select count(*) from film where title ilike 'T%' and rating = 'G';

select count(*) from city where city ilike 'R%r';