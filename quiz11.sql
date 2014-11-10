
-- First five rows of the table:
select * from weather limit 5;

-- AVG speed over time: There were 13 rows returned.
select avg(wind_speed) from weather;


-- five windiest days
select concat(month, '-', day, '-') as date, wind_speed from weather where wind_speed is not null order by wind_speed DESC limit 5;


-- windiest day: This tells us that the windiest day is in February.
select concat(month, '-', day, '-') as date, wind_speed from weather where wind_speed is not null order by wind_speed DESC limit 1;

-- What was the hottest temperature recorded?
select MAX (temp) AS HottestTemp from weather

