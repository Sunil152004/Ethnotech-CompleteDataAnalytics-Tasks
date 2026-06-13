use intro_sql;
select*from index_1;

#Stored Procedures
create table players_footbal
(
player_id int,
player_name varchar(20),
country varchar(20),
goals int
);
insert into players_footbal values(1,'Ronaldo','Portugal',100),
							(2,'Messi','Argentina',90),
							(3,'Neymar','Brazil',80),
							(4,'Sunil','India',110),
							(5,'Peddi','India',150),
							(6,'Shanmukha','Pakistan',100);
select*from players_footbal;


select*from players_footbal where goals > 100;

DELIMITER &&

CREATE PROCEDURE top_players()
BEGIN
    SELECT player_name, country, goals
    FROM players_footbal
    WHERE goals > 100;
END &&

DELIMITER ;

CALL top_players();

DELIMITER &&

CREATE PROCEDURE low_players()
BEGIN
    SELECT player_name, country, goals
    FROM players_footbal
    WHERE goals < 100;
END &&

DELIMITER ;

call low_players();

select player_name,country,goals from players_footbal order by goals desc limit 1;

DELIMITER &&

CREATE PROCEDURE top_player_sort_by_goals(in num int)
BEGIN
    SELECT player_name, country, goals
    FROM players_footbal
    order by goals desc limit 3;
END &&

DELIMITER ;

call top_player_sort_by_goals(3)

DELIMITER &&

CREATE PROCEDURE least_player_sort_by_goals(IN num INT)
BEGIN
    SELECT player_name, country, goals
    FROM players_footbal
    ORDER BY goals ASC
    LIMIT num;
END &&

DELIMITER ;

CALL least_player_sort_by_goals(3);
SET SQL_SAFE_UPDATES=0;

update players_footbal set goals=200 where player_name='Ronaldo';
select*from players_footbal;

delimiter //
create procedure update_players_footbal(in num int,in player varchar(20))
begin
update players_footbal set goals=num where player_name=player ;
end //
delimiter ;

call update_players_footbal(300,'Ronaldo');
select*from players_footbal;

delimiter //
create procedure player_count_country(in var varchar(25),out total_player int)
begin
select count(*) from players_footbal where country=var into total_player;
end//
delimiter ;

call player_count_country('India',@total_count);
select  @total_count as player_count_country;