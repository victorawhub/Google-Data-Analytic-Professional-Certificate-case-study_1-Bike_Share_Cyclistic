--  compare the vehicle types among member and casual riders.
select member_casual, rideable_type, 
count(*) as total_trip_rideable
from`lithe-bazaar-443112-i8.Cycalitic_Trips.clean_combined_table_2022`
group by member_casual, rideable_type
order by member_casual, total_trip_rideable

