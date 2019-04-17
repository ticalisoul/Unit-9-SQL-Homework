use sakila;
#1a
select first_name,last_name from actor;
#1b
select concat(first_name,' ',last_name) as "Actor Name" from actor;
#2a
select actor_id,first_name,last_name from actor
where first_name = 'Joe';
#2b
select actor_id,first_name,last_name from actor
where last_name like '%Gen%';
#2c
select last_name,first_name from actor
where last_name like '%Li%' order by last_name,first_name;
#2d
select country_id,country from country
where country in ('Afghanistan','Bangladesh','China');
#3a
alter table actor
add description blob;
#3b
alter table actor
drop column description;
#4a
select distinct last_name, count(*) from actor
group by last_name;
#4b
select distinct last_name, count(*) from actor
group by last_name
having count(*) > 1;
#4c
update actor
set first_name = 'HARPO'
where first_name = 'GROUCHO' and last_name = 'WILLIAMS';
#4d
update actor
set first_name = 'GROUCHO'
where first_name = 'HARPO' and last_name = 'WILLIAMS';
#5a
show create table address;
#6a
select first_name,last_name,address.address
from staff
inner join address on staff.address_id = address.address_id;
#6b
select first_name,last_name,sum(payment.amount)
from staff
inner join payment on staff.staff_id = payment.staff_id
where payment_date between '2005-08-01 00:00:00' and '2005-09-01 00:00:00' and payment.staff_id = 1
or payment.staff_id = 2
group by payment.staff_id;
#6c
select count(distinct actor_id),title
from film_actor
inner join film on film_actor.film_id = film.film_id
group by film.film_id;
#6d
select count(inventory.film_id),film.title
from inventory
inner join film on inventory.film_id = film.film_id
where film.title = 'Hunchback Impossible';
#6e
select first_name,last_name,sum(payment.amount)
from customer
inner join payment on customer.customer_id = payment.customer_id
group by payment.customer_id
order by last_name;
#7a
