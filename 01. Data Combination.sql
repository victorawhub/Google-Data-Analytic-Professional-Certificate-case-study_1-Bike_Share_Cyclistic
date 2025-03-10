-- combining data from Jan 2022 to Dec 2022 into single table

-- Data types Mismatch in June and September 2022 csv file, use cast function to change data type into string 

Create table `lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`
as 
select ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual
from `lithe-bazaar-443112-i8.Cycalitic_Trips.January_2022`
union all 
select ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id,  start_lat, start_lng, end_lat, end_lng, member_casual
from `lithe-bazaar-443112-i8.Cycalitic_Trips.February_2022`
union all
Select ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id,  start_lat, start_lng, end_lat, end_lng, member_casual
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.March_2022`
union all
Select *
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.April_2022`
  union all
  Select *
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.May_2022_batch_1`
  union all
  Select *
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.May_2022_batch_2`
union all
  Select *
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.July_2022_batch_1`
  union all
  Select *
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.July_2022_batch_2`
  union all
  Select *
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.August_2022_batch_1`
  union all
  Select *
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.August_2022_batch_2`
 union all
  Select *
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.October_2022_batch_1`
  union all
  Select *
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.October_2022_batch_2`
union all
  Select *
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.November_2022`
  union all
  Select *
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.December_2022`
union all
Select ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, cast(end_station_id as String) as end_station_id,  start_lat, start_lng, end_lat, end_lng, cast(member_casual as string) as member_casual
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.June_2022_batch_1`
union all
Select ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, cast(end_station_id as String) as end_station_id,  start_lat, start_lng, end_lat, end_lng, cast(member_casual as string) as member_casual
  from `lithe-bazaar-443112-i8.Cycalitic_Trips.June_2022_batch_2`
union all
Select ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, cast(end_station_id as String) as end_station_id,  start_lat, start_lng, end_lat, end_lng, cast(member_casual as string) as member_casual
from `lithe-bazaar-443112-i8.Cycalitic_Trips.September_2022_batch_1`
union all
Select ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, cast(end_station_id as String) as end_station_id,  start_lat, start_lng, end_lat, end_lng, cast(member_casual as string) as member_casual
from `lithe-bazaar-443112-i8.Cycalitic_Trips.September_2022_batch_2`
