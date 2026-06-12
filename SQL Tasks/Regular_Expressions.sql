use intro_sql;
select*from churn;
select CreditScore,IsActiveMember,datediff(sysdate(),Balance) as EstimatedSalary from churn;
select*from index_1;
select coffee_name,cash_type,datediff(sysdate(),datetime) as datedifference from index_1;
select date_format('2021-05-15','%y');
select date_format('2020-07-10','%m');
select date_format('2018-12-11','%d');
select day(date),date from index_1;
select month(date),date from index_1;
select year(date),date from index_1;
select adddate('2026-06-12',interval(10)day);
select adddate('2026-06-12',interval(1)year);
select adddate('2026-06-12',interval(6)month);
select adddate('2026-06-12',interval(4)quarter);
select subdate(sysdate(),interval(7)year);
select subdate('2020-09-15',interval(7)year);

#Regular Expressions

select*from index_1 where coffee_name like 'A%'; #using like

select count(*) from index_1 where coffee_name like 'c%'; 

select*from index_1 where coffee_name regexp '^c';

select count(*) from index_1 where coffee_name like '%A' or cash_type like '%C%' or coffee_name like 'C%';

select count(*) from index_1 where coffee_name regexp '[A-C]';

select*from index_1 where coffee_name regexp 'e$';