-- create a new table for day of week, month and ride_length columns
create table Cycalitic_Trips.clean_combined_table_2022 as
select *, 
  case extract (DAYOFWEEK from started_at)
  when 1 then 'SUN'
  when 2 then 'MON'
  when 3 then 'TUE'
  when 4 then 'WED'
  when 5 then 'THU'
  when 6 then 'FRI'
  when 7 then 'SAT'
  end as day_of_week,
    case extract (MONTH from started_at)
  when 1 then 'Jan'
  when 2 then 'Feb'
  when 3 then 'Mar'
  when 4 then 'Apr'
  when 5 then 'May'
  when 6 then 'Jun'
  when 7 then 'Jul'
  when 8 then 'Aug'
  when 9 then 'Sep'
  when 10 then 'Oct'
  when 11 then 'Nov'
  when 12 then 'Dec'
  end as Month,
    (extract(HOUR from (ended_at - started_at)) * 60 +
    extract(MINUTE from (ended_at - started_at)) +
    extract(SECOND from (ended_at - started_at)) / 60) as ride_length
   from`lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
  
-- check the new column in the new table 
select *
   from`lithe-bazaar-443112-i8.Cycalitic_Trips.clean_combined_table_2022`


-- Find out how many ride_length > 1 day, and create the day of week and month columns 
select *, 
   from`lithe-bazaar-443112-i8.Cycalitic_Trips.clean_combined_table_2022`
  where start_station_name is not null and 
  end_station_name is not null and
  end_lat is not null and 
  ride_length >= 1440
  order by ride_length desc 


-- Find out how many ride_length > 1 min and < 1 day, and create the day of week and month columns 
select *, 
   from`lithe-bazaar-443112-i8.Cycalitic_Trips.clean_combined_table_2022`
  where start_station_name is not null and 
  end_station_name is not null and
  end_lat is not null and 
  ride_length > 1 and ride_length < 1440
  order by ride_length desc 

