-- Every airport and airline name in the flights database.
select a.name, i.name from airlines a, airports i order by a , i;

-- Every airports north of Fairbanks: 
with max_air as ( select name, lat from airports where lat >
( select lat from airports where name like 'Fairbanks%')
)
select a.name , a.lat , b.name, b.lat
from max_air a, max_air b
where a.lat> b.lat
order by a.name, b.lat desc;
 