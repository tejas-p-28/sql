show databases;
use mydb;

create table demo(
id int,
person_name varchar(24),
age int
);

insert into demo (id, person_name, age) values
(1, 'Tejas', 23),
(2, 'Tejaa', 24);

select * from demo;


#add column to existing table
alter table employees	add column phone_no varchar(45);

#adding multiple columns 
alter table employees add column middle_name varchar(45), add column gender varchar(10);

#modify or alter the columns
alter table employees modify column phone_no varchar(20);

#rename 
alter table employees change column middle_name middleName varchar(20);


#drop column
alter table employee drop column gender;

