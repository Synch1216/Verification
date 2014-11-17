-- Which four airplanes made the most flights out of NYC airports in 2013?
select flights.tailnum AS "Tail", COUNT(tailnum) from flights where tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW')
GROUP BY tailnum;
-- N328AA had the most flights

-- #2. There is no data given for N848MQ, perhaps because that plane is missing some entries on another table.
select * from planes where tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW');

--#3. 
select flights.tailnum,
flights.year,
flights.month,
flights.day,
flights.dep_delay,
flights.arr_delay,
flights.dest
from flights where tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW')
and month= 2
and day >= 14
and day <=17
order by tailnum;

--4. 13 rows
select flights.tailnum,
flights.year,
flights.month,
flights.day,
flights.dep_delay,
flights.arr_delay,
flights.dest,
airports.name
from flights 
inner join airports
on flights.dest = airports.faa
where tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW')
and flights.month= 2
and flights.day >= 14
and flights.day <=17
order by flights.tailnum;

--5. There are 14 rows returned with the second row having the name column empty.
select flights.tailnum,
flights.year,
flights.month,
flights.day,
flights.dep_delay,
flights.arr_delay,
flights.dest,
airports.name
from flights 
left join airports
on flights.dest = airports.faa
where tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW')
and flights.month= 2
and flights.day >= 14
and flights.day <=17
order by flights.tailnum;

--6. 
select flights.tailnum,
flights.year,
flights.month,
flights.day,
flights.dep_delay,
flights.arr_delay,
flights.dest,
airports.name,
planes.seats
from flights 
left join airports
on flights.dest = airports.faa
left join planes
on flights.tailnum = planes.tailnum
where flights.tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW')
and flights.month= 2
and flights.day >= 14
and flights.day <=17
order by flights.tailnum;

--7. I find it more readable without aliases but it is easier to write using the alias.
select f.tailnum,
f.year,
f.month,
f.day,
f.dep_delay,
f.arr_delay,
f.dest,
a.name,
p.seats
from flights f
left join airports a
on f.dest = a.faa
left join planes p
on f.tailnum = p.tailnum
where f.tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW')
and f.month= 2
and f.day >= 14
and f.day <=17
order by f.tailnum;





