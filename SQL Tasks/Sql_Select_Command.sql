create database sunil;
use sunil;
create table Employee(emp_name varchar(20) not null,emp_id int primary key, manager_name varchar(20),division int);
desc Employee;
create table emp1(first_name varchar(20),last_name varchar(20),title varchar(50),age int,salary int);
desc emp1;
alter table emp1 add gender varchar(1) after last_name;
desc emp1;
alter table emp1 drop column age;
desc emp1;
INSERT INTO emp1
(first_name, last_name, gender, title, salary)
VALUES
('mahendrakar', 'sunil', 'M', 'Fav Food', 20000),
('neemkar', 'lakshmikanth', 'M', 'Weight lifting', 30000);
SET SQL_SAFE_UPDATES = 0;
update emp1 
set salary=300000
where last_name='sunil';
SELECT*FROM emp1;
create table emp_info(first_name varchar(20),last_name varchar(20),emp_id int primary key,emp_age int,city varchar(20),state varchar(20));
desc emp_info;
INSERT INTO emp_info
(first_name, last_name, emp_id, emp_age, city, state)
VALUES
('Sunil', 'Mahendrakar', 101, 22, 'Hubli', 'Karnataka'),
('Sai', 'Mahendrakar', 102, 25, 'Bangalore', 'Karnataka'),
('Gokul', 'Kumar', 103, 23, 'Ahmedabad', 'Gujarat'),
('Lakshmikanth', 'Neemkar', 104, 28, 'Hyderabad', 'Telangana'),
('Archana', 'Mahendrakar', 105, 24, 'Vijayawada', 'Andhra Pradesh');
select*from emp_info;
select first_name,last_name from emp_info;
select count(*) from emp_info;
select count(*) as Record_count from emp_info;
select*from emp_info where emp_age > 23;
select*from emp_info where first_name like 'S%';
select*from emp_info where first_name like '%l';
select*from emp_info where emp_age=22 or emp_age=23;
select*from emp_info where emp_age in(23,28);
select*from emp_info where state like '%a%';
select first_name,last_name from emp_info where emp_id=101;
select first_name,last_name from emp_info where emp_id=105;