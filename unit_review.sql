-- 1. film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.
select title, length, replacement_cost from film where title ilike 'k%'
order by length desc, replacement_cost asc
limit 4;

-- 2. film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
select rating, count(title) from film
group by rating
order by count(title) desc
limit 1;

-- 3. cutomer tablosunda en çok alışveriş yapan müşterinin adı nedir?
select cu.first_name, cu.last_name, count(pa.payment_id) as total_purchases
from customer cu
inner join payment pa
	on cu.customer_id = pa.customer_id
group by cu.customer_id
order by total_purchases desc
limit 1;

-- 4. category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
select c.name, count(f.*) as film_count from category c
join film_category fc
	on fc.category_id = c.category_id
join film f
	on f.film_id = fc.film_id
group by c.name
order by film_count desc;

-- 5. film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?
select count(title) from film
where title ilike '%e%e%e%e%';