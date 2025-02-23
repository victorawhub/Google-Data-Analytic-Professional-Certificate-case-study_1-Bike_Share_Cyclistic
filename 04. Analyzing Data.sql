--  compare the vehicle types among member and casual riders.
select member_casual, rideable_type, 
count(*) as total_trip_rideable
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual, rideable_type
order by member_casual, total_trip_rideable

  
-- No of user type per month
select member_casual, month,
count(*) as total_trip_month
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual, month
order by member_casual


--No of user type per day
select member_casual, day_of_week,
count(*) as total_trip_day
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual, day_of_week
order by member_casual, total_trip_day


-- No of user type per hour of day
select member_casual, day_of_week, 
extract(HOUR from started_at) as hour_of_day, 
count(*) as total_trip_hour
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual, day_of_week, hour_of_day
order by member_casual, day_of_week, total_trip_hour


-- avg ride length per vehicle
select member_casual, rideable_type,
avg(ride_length) as avg_travel_duration_vehicle
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual,rideable_type
order by member_casual,rideable_type


-- avg ride length per user type per month
select member_casual, month,
avg(ride_length) as avg_travel_duration_month 
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual, month
order by member_casual, month


-- avg ride length per user type per day
select member_casual, day_of_week,
avg(ride_length) as avg_travel_duration_day
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual, day_of_week
order by member_casual, day_of_week


-- avg ride length per user type per hour
select member_casual, day_of_week,
extract(hour from started_at) as hour_of_day,
avg(ride_length) as avg_travel_duration_hour
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual, day_of_week, hour_of_day
order by member_casual, day_of_week, hour_of_day


-- avg ride start
select member_casual, start_station_name,
avg(extract(HOUR from started_at)) as avg_started_at
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual, start_station_name
order by member_casual, start_station_name

  
-- avg ride end
select member_casual, end_station_name,
avg(extract(HOUR from ended_at)) as avg_ended_at
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual, end_station_name
order by member_casual, end_station_name


-- start location
select member_casual, start_station_name,
avg(start_lat) as avg_start_lat, avg(start_lng) as avg_start_lng, 
count (ride_id) as total_trip
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual, start_station_name
order by member_casual, start_station_name


-- end location
select member_casual, end_station_name,
avg(end_lat) as avg_end_lat, avg(end_lng) as avg_end_lng, 
count (ride_id) as total_trip
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
group by member_casual, end_station_name
order by member_casual, end_station_name


-- mode month 
select rnk, member_casual, month, cnt
from 
(
  select member_casual, month, cnt, dense_rank()
  over(order by cnt desc) as rnk 
  from 
  (
    select member_casual, month, count(*) as cnt
    from  `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
    group by member_casual, month
  )
)
order by rnk


-- mode day of week
select rnk, member_casual, day_of_week, cnt
from 
(
    select member_casual, day_of_week, cnt, dense_rank()
    over(order by cnt desc) as rnk 
    from 
    (
      select member_casual, day_of_week, count(*) as cnt
      from  `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
      group by member_casual, day_of_week
    )
)
order by rnk


-- mode hour of day
Select rnk, member_casual, day_of_week, hour_of_day, cnt
from
(
  select member_casual, day_of_week, hour_of_day, cnt, dense_rank() 
  over (order by cnt desc) as rnk
  from 
  (
    select member_casual, day_of_week, extract(hour from started_at) as hour_of_day, count(*) as cnt
    from  `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
    group by member_casual, day_of_week, hour_of_day
  )
)
order by rnk 


-- ranking start location
Select rnk, member_casual, start_station_name, start_lat, start_lng, cnt
from
(
  select member_casual, start_station_name, start_lat, start_lng, cnt, dense_rank() 
  over (order by cnt desc) as rnk
  from 
  (
    select member_casual, start_station_name, avg(start_lat) as start_lat, avg(start_lng) as start_lng, count(*) as cnt
    from  `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
    group by member_casual, start_station_name
  )
)
order by rnk 


--- ranking end location
Select rnk, member_casual, end_station_name, end_lat, end_lng, cnt
from
(
  select member_casual, end_station_name, end_lat, end_lng, cnt, dense_rank() 
  over (order by cnt desc) as rnk
  from 
  (
    select member_casual, end_station_name, avg(end_lat) as end_lat, avg(end_lng) as end_lng, count(*) as cnt
    from  `lithe-bazaar-443112-i8.Cycalitic_Trips.clean2_combined_table_2022`
    group by member_casual, end_station_name
  )
)
order by rnk 
