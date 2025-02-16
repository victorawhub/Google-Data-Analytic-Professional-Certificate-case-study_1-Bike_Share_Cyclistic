-- check the total rows of data for the entire year 
select 
  count(*) as ride_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
  
-- check the null values for each columns 

select 
  count(*) - count(ride_id) ride_id,
  count(*) - count(rideable_type) rideable_type,
  count(*) - count(started_at) started_at,
  count(*) - count(ended_at) ended_at,
  count(*) - count(start_station_name) start_station_name,
  count(*) - count(start_station_id) start_station_id,
  count(*) - count(end_station_name) end_station_name,
  count(*) - count(end_station_id) end_station_id,
  count(*) - count(start_lat) start_lat,
  count(*) - count(start_lng) start_lng,
  count(*) - count(end_lat) end_lat,
  count(*) - count(end_lng) end_lng,
  count(*) - count(member_casual) member_casual
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`

-- checking duplicate rows 
select 
count(ride_id) - count (distinct ride_id) as duplicate_ride_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`

-- checking length of ride_id 
select length(ride_id) as length_ride_id, count(ride_id) as no_of_rows 
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
group by length_ride_id

-- checking rideable_type 


