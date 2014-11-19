-- 1. Weather associated with delays? Wind direction, gust may play a slight role.
select
f.tailnum,
f.dep_delay,
w.pressure,
w.wind_speed,
w.wind_dir,
w.wind_gust,
w.precip,
w.visib
from flights f 
join weather w
on f.year = w.year
AND f.month = w.month
AND f.day = w.day
where f.origin in ('LGA', 'JFK')
order by f.dep_delay desc;

--2. Yes
select p.year, count (dep_delay) as Delay from flights f
join planes p 
on f.tailnum = p.tailnum 
where f.origin in ('JFK','LGA')
order by p.year;

-- 3. What was the precipitation experienced on flights on the dates of 2/1/13-2/18/13?

select
f.tailnum,
f.year,
f.month,
f.day,
w.precip,
w.year
from flights f 
join weather w
on f.year = w.year
and month= 2
and day >= 1
and day <=18
and year = 2013
order by tailnum;

