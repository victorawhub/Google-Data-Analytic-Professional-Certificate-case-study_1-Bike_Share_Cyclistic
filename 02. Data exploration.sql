-- check the duplication values for each fields

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

-- checking duplicate ride_id field
select 
count(ride_id) - count (distinct ride_id) as duplicate_ride_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`

-- check the total rows of data for the entire year 
select 
  count(*) as ride_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
  
-- checking length of ride_id 
select length(ride_id) as length_ride_id, count(ride_id) as no_of_rows 
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
group by length_ride_id

-- checking rideable_type 
select distinct rideable_type, 
count(rideable_type) as no_vehicle 
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
group by rideable_type 

-- started/ ended at present TIMESTAMP - YYYY-MM-DD hh:mm:ss UTC
select max (
  extract (hour from(ended_at - started_at)) * 60 +
  extract (Minute from(ended_at - started_at)) + 
  extract (second from(ended_at - started_at)) / 60 ) as longest_ride_length,
  min (
   extract (hour from (ended_at - started_at)) * 60 +
   extract (minute from (ended_at - started_at)) +
   extract (second from (ended_at - started_at)) / 60 ) as shortest_ride_length,
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`

-- To solve the negative value, Filter out the negative value
SELECT MAX(ride_length) AS longest_ride_length,
       MIN(ride_length) AS shortest_ride_length
FROM (
  SELECT 
    (EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
     EXTRACT(MINUTE FROM (ended_at - started_at)) +
     EXTRACT(SECOND FROM (ended_at - started_at)) / 60) AS ride_length
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
) 
WHERE ride_length >= 0

-- To find out the problematic rows
SELECT * 
FROM `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
WHERE ended_at < started_at

-- calculate usage time of bike more than a day (1440 mins in a day)
select count(*) AS more_than_a_day
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where (
  extract(HOUR from (ended_at - started_at)) * 60 +
  extract(MINUTE from (ended_at - started_at)) +
  extract(SECOND from (ended_at - started_at)) / 60) >= 1440

-- calculate usage time of bike less than a minute 
select count(*) AS less_than_a_minute
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where (
  extract(HOUR from (ended_at - started_at)) * 60 +
  extract(MINUTE from (ended_at - started_at)) +
  extract(SECOND from (ended_at - started_at)) / 60) <= 1

-- Find out how many number of rows in start_stastion_name, start_station_id, end_station_name, end_station_id

select count (distinct start_station_name) as number_unique_station
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`;

select count (distinct start_station_id) as number_unique_station_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`;

select count(ride_id) as rows_missing_start_station_value
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where start_station_name is null or start_station_id is null; 

select count(distinct end_station_name) as number_of_end_unique_station
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`;

select count(distinct end_station_id) as number_of_end_unique_station_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`;

select count(ride_id) as rows_missing_end_station_value
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where end_station_name is null or end_station_id is null; 


-- Find out the null value in start_station_name
select count(*) as null_start_station_name
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where start_station_name is null 


-- Find out the null value in start_station_id
select count(*) as null_start_station_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where start_station_id is null 

  
-- Find out the start_station_name has name but no start_station_id
select count(*) as start_station_name_missing_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where start_station_name is not null and start_station_id is null 

  
-- Find out the start_station_id has id number but no start_station_name
select count(*) as start_station_id_missing_name
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where start_station_name is null and start_station_id is not null 


-- Find out the both start station name and id are null
select count(*) as null_start_station_name_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where start_station_name is null and start_station_id is null 


-- Find out the null value in end_station_name
select count(*) as null_end_station_name
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where end_station_name is null


-- Find out the null value in end_station_id
select count(*) as null_end_station_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where end_station_id is null


-- Find out the end_station_name has name but no end_station_id
select count(*) as end_station_name_missing_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where end_station_name is not null and end_station_id is null 

  
-- Find out the end_station_id has id number but no end_station_name
select count(*) as end_station_id_missing_name
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where end_station_name is null and end_station_id is not null 


-- Find out the both end station name and id are null
select count(*) as null_end_station_name_id
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where end_station_name is null and end_station_id is null 


-- check start_lat / start_lng / end_lat / end_lng
select count(ride_id) as null_lat_lng
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where start_lat is null or start_lng is null

select count(ride_id) as null_lat_lng
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where start_lat is null and start_lng is null

select count(ride_id) as null_lat_lng
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where end_lat is null or end_lng is null

select count(ride_id) as null_lat_lng
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
where end_lat is null and end_lng is null


-- check member_casual
select member_casual, count(member_casual) as no_of_trip 
from `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
group by member_casual
