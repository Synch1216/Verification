-- 1. Weather associated with delays?
select
f.tailnum,
f.dep_delay,
w.pressure,
w.wind_speed,
w.precip,
w.visib
from flights f 
join weather w
on f.year = w.year
AND f.month = w.month
AND f.day = w.day
where f.origin in ('LGA', 'JFK')
order by f.dep_delay desc;

2. 


