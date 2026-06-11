create database shannu;
use shannu;
select*from churn;
#count
select gender,count(*) from churn group by gender;
select NumOfProducts ,count(*) from churn group by NumOfProducts;
select NumOfProducts ,gender,count(*) from churn group by gender,NumOfProducts;
select EstimatedSalary from churn;
#sum
select sum(EstimatedSalary) from churn;
select round(sum(EstimatedSalary),0) from churn;
#avg
select avg(EstimatedSalary) from churn;
select round(avg(EstimatedSalary),0) from churn;
#min
select round(min(EstimatedSalary),0) from churn;
#max
select round(max(EstimatedSalary),0) from churn;
use sunil;
desc emp1;
#string functions
#concat
select*from emp_info;
select concat(first_name,last_name) from emp_info;
#REMOVING SPACES USING TRIM
select trim(concat(first_name,last_name)) from emp_info;
#substring
select substr("SQL LESSONS",5,7) as extractstring;
select substr("M SUNIL",3,7) as extrastring;
#upper & lower
SELECT CONCAT(first_name,UPPER(first_name),LOWER(last_name)) FROM emp_info;
#character length
select character_length(first_name) from emp_info;
select character_length(last_name) from emp_info;
#mid
select mid("hello world",2,3);
select mid(first_name,1,5) from emp_info;