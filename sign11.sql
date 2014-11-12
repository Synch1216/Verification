SELECT 
  weather.year, 
  weather.month, 
  weather.day, 
  weather.hour, 
  weather.wind_dir
  (select case
when wind_dir <=90 then 'North'
when wind_dir > 90 then and wind_dir <=180 then 'East'
when wind_dir > 180 then and wind_dir <= 270 then 'South' 
else 'West'
end as the_wind_direction)
FROM 
  public.weather
  where day=1 and hour=1
order by month;
