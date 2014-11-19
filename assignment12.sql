-- Assignment Week 12
-- Names of the five airports that recieved the most flights:
select
a.name,
count (*) as flight_count from flights f
join airports a 
on f.dest= a.faa
group by a.name 
order by flight_count desc
limit 5;

-- American Airlines destination cities from New York airports?
select distinct
a.name
from flights f join airports a 
on f.dest= a.faa
where f.carrier= 'AA'AND f.origin in ('JFK','LGA')
order by a.name;  

