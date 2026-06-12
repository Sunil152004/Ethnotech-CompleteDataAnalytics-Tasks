# SUBQUERY
use intro_sql;
select*from index_1;
select*from index_1 where money>(select avg(money) from index_1);
# Max money
select max(money) from index_1;
#second heighest money
select max(money) as second_heighest_money from index_1 where money<(select max(money) from index_1);
select money from index_1 where date='2024-04-05';

# VIEWS
select*from index_1 where cash_type='cash';
create view cash as select*from index_1 where cash_type='cash';
select*from cash;
update cash set money='50' where coffee_name='Latte';
select*from cash;