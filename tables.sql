show databases;
use sql_practice;
show tables;
create table student(
	id int primary key,
    s_name varchar(30),
    degree varchar(30));
insert into student (id, s_name, degree) values (
	1,'Tejas', 'MCA');
select * from student;
insert into student(id, s_name, degree) values(
	2, 'Pravin', 'MCA'),
	(3, 'Atharva', 'MCA'),
    (4, 'Shubhi', 'MCA');
    
select s_name from student order by s_name desc;

alter table student
add email varchar(30);
update student set email = 'abc@gmail.com' where s_name = 'Tejas';
set sql_safe_updates = 1; 
show tables;
select * from student;

