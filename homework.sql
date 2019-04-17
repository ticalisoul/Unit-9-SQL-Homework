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