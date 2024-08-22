use sql_practice;
create table salary (
	id int primary key,
    e_name varchar(30),
    salary int);
    
insert into salary (id, e_name, salary) values (
	1, 'Tejas',20000),
    (2, 'Dhananjay', 40000),
    (3, 'Atharva', 30000);

select e_name, salary from salary 
where salary = (
select max(salary) 
from salary 
where salary < (select max(salary) from salary));


select e_name, salary from salary
where salary = 
(select max(salary) from salary 
where salary < (select max(salary) from salary));