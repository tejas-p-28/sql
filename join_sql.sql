create database sql_joins;
show databases;
use sql_joins;
create table cricket (cric_id int auto_increment, name varchar(30), primary key(cric_id));
create table football (foot_id int auto_increment, name varchar(30), primary key(foot_id));
insert into cricket(name) values ('Tejas'),('Pravin'),('Shoaib'),('Atharv'),('Virang');
select * from cricket;
insert into football(name) values ('Tejas'),('Pravin'),('Shoaib'),('Parth'),('Lalit');
select * from football;
select * from cricket as cric inner join football as foot on cric.name = foot.name;
use classicmodels;
show tables;
select * from cricket;

create table salesman(sales_id int, name varchar(30), city varchar(20),commission float);
insert into salesman values 
		(5001, 'James Hoog', 'New York',  0.15),
        (5002, 'Nail Knite', 'Paris' ,0.13),
        (5005 ,'Pit Alex','London' ,0.11),
        (5006,'Mc Lyon', 'Paris', 0.14),
        (5007,'Paul Adam', 'Rome'  ,0.13),
        (5003,'Lauson Hen', 'San Jose' ,      0.12);
        
create table customer (cust_id int, cust_name varchar(30),city varchar(29), grade int,sales_id int);
insert into customer values(3002,'Nick Rimando',   'New York',  100 ,5001),
        (3007 ,'Brad Davis ','New York',200 ,5001),
        (3005 ,' Graham Zusi', 'California', 200 ,     5002),
        (3008,'Julian Green','London',300 ,5002),
        (3004, 'Fabian Johnson',' Paris ' ,  300 ,       5006),
        (3009,'Geoff Cameron','Berlin',100 ,5003),
        (3003,'Jency', 'Moscow' ,200,5007),
        (3001,'Brad Guzan','London',null,5005);
show tables;
select * from salesman as s;
select * from customer as c;
select s.name, s.commission, cust_id from salesman as s inner join c.cust_id on c.city = s.city;

show tables;
select * from customer;

show databases;
use sql_intro;
show tables;
select * from emp_detail;
select emp_name, salary from emp_detail where salary = (select max(salary) from emp_detail);
select emp_name, salary from emp_detail where salary < (select avg(salary) from emp_detail);

