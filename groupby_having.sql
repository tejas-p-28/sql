drop table Employee_Details;
create table emp_detail (emp_id int primary key, emp_name varchar(25), age int, Gender char(1),Doj date, Dept varchar(10), City varchar(15), Salary int);
insert into emp_detail values(101,'Rahul',26,'M','2002-05-30','Sales','Pune',20000),
(102,'Tejas',28,'M','2020-08-22','Marketing','Kolkata',30000),
(103,'Dhananjay',26,'M','2019-05-10','Tech','Banglore',40000),
(104,'Shivangi',40,'F','2022-02-28','Product','Chandigarh',35000),
(105,'Khushi',39,'F','2023-10-15','HR','Nagpur',33000),
(106,'Atharv',26,'M','2024-12-30','Finance','Mumbai',28000),
(107,'Arpita',34,'F','2015-04-8','Sales','Chandigarh',27000),
(108,'Pravin',28,'M','2016-08-14','Tech','Kolkata',33000),
(109,'Virang',29,'M','2014-08-7','Product','Nagpur',30000),
(110,'Shoaib',40,'M','2016-7-23','Finance','Banglore',44000);
show tables;
select emp_name,avg(Salary) as average_salary from emp_detail group by emp_name;
select distinct city from emp_detail;	
select distinct Dept from emp_detail;

select dept, round(avg(age),0) as avg_age from emp_detail group by dept;

select dept, round(avg(age),0) as avg_age from emp_detail group by dept order by dept;

select year(doj) as year, count(emp_id) from emp_detail group by year;

create table sales (product_id int,sell_price float,quantity int,state varchar(20));

insert into sales values(121,320,3,'Pune'),
(121, 400,2,'Nagpur'),
(132,3000,4,'Mumbai'),
(132,250,1,'Nagpur'),
(121, 4000, 8, 'Chandigarh'),
(132,200,10,'Kolkata'),
(121,400,4,'Banglore');

select * from sales;

select product_id ,sum(sell_price*quantity) as revenue from sales group by product_id;
 
create table c_prod (product_id int, c_price float);

insert into c_prod values(121,400),(132,500);

select c.product_id, sum((s.sell_price -  c.c_price) * s.quantity) as profit
from sales as s inner join c_prod as c 
where s.product_id = c.product_id 
group by c.product_id;

select count(emp_id) ,city from emp_detail as count group by city having count(emp_id)>=2;

select dept , avg(Salary) as avg_sal from emp_detail as avg_salary group by dept having avg_sal>=30000;