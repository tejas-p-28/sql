create database schooldb;

use schooldb;

create table students(studentid int, firstname varchar(25), lastname varchar(25), email varchar(25), enrollmentdate date);
insert into students(studentid, firstname, lastname, email, enrollmentdate) values 
(1, 'Tejas', 'patil', 'tejas@gmail.com', '2025-06-20'),
(2, 'Dadu', 'patil', 'dadu@gmail.com', '2024-06-20');

select * from students;

create table courses (courseID int, coursename varchar(25), department varchar(25));

insert into courses(courseID , coursename, department)values 
(101, 'Data warehouse', 'engineering'),
(102, 'Data Science', 'Data');

select * from courses;

drop table courses;
drop table students;
drop database schooldb;



create database companydb;

use companydb;

create table employee(
employeeId int, firstname varchar(25), lastname varchar(25), email varchar(25), hiredate date, salary decimal(10,2);


select * from employee where lastname is null;

update employee set lastname='patil' where lastname is null

#deleting single record
delete from employee where lastname='patil';

#delete multiple record
delete from employee where salary < 45000;

