select count(film_id), category_id
from sakila.film_category
group by category_id;

select s.first_name, s.last_name, a.address
from sakila.staff s left join sakila.address a on s.address_id = a.address_id;

select count(a.actor_id), f.title
from sakila.film f left join sakila.film_actor a on f.film_id = a.film_id
group by f.title;

select sum(p.amount), c.last_name 
from sakila.customer c left join sakila.payment p on c.customer_id = p.customer_id
group by c.last_name
order by c.last_name asc;