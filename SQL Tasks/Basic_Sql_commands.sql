create database intro_sql;
use intro_sql;
create table student(std_id int primary key,std_name varchar(20),Age int,Gender varchar(1));
insert into student values(10,'sunil',21,'M'),(11,'vishnu',19,'M');
select*from student;
desc student;
insert into student values(10,'sunil',21,'M');      #duplicate id enterd
create table dep(dept_id int,std_id int ,dept_name varchar(20),primary key(dept_id),foreign key(std_id) references student(std_id));
select*from dep;
create table student1(std_id int primary key,std_name varchar(20) not null,Age int,Gender varchar(1));
