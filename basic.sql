show databases;
use mysql;
show tables;
select * from db;
describe db;
create database sql_intro;
show databases;
use sql_intro;
create table emp_details(Name varchar(25), Age int, sex char(1), doj date, city varchar(15), salary float);
describe emp_details;
insert into emp_details values('Tejas',23,'M','2024-06-2','Pune',30000),
('Shubhi',22,'F','2023-10-30','Pune',90000),
('Pravin',27,'M','2024-06-4','Goa',30000),
('Virang',30,'M','2022-03-31','Daman',100000),
('Atharv',25,'M','2023-04-28','Nagpur',30000),
('Shoaib',26,'M','2024-06-2','Pakistan',30000);
select * from emp_details;
select distinct city from emp_details;
select count(name) as name_count from emp_details;
select sum(salary) as total_salary from emp_details;
select avg(salary) as avg_salary from emp_details; 
select name, age , city from emp_details;
select * from emp_details where age >= 30;
select name,city from emp_details where sex = 'F';
select * from emp_details where city = 'pune'or'Nagpur';
select * from emp_details where city in ('pune','nagpur');
select * from emp_details where doj between '2023-01-01' and '2024-04-01';
select * from emp_details where sex='m' and age>=26;
select sex, avg(salary) from emp_details group by sex;
select * from emp_details order by name desc;
select length('daman') as city_length;
select repeat('1',10);
select upper(name) from emp_details;
select curdate();
select day(curdate());
select now();

#string function
select lower('INDIA') as lower_case;
select lcase('INDIA') as lower_case;
select ucase('india') as u_case;
select name,character_length(name) as length from emp_details;
select sex, name, concat(name, ' ', sex) as info from emp_details;
select reverse(name) from emp_details;
select replace('orange is vegetable', 'vegetable','fruit');
select length('    Tejas     ');
select length(ltrim('    Tejas     '));
select length(rtrim('    Tejas     '));
select length(trim('    Tejas     '));
select position('shubhi' in name) from emp_details;
select ascii(name) from emp_details;	