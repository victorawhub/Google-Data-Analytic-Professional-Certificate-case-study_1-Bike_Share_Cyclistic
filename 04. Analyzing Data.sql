--  compare the vehicle types among member and casual riders.
select member_casual, rideable_type, 
count(*) as total_trip_rideable
from`lithe-bazaar-443112-i8.Cycalitic_Trips.clean_combined_table_2022`
group by member_casual, rideable_type
order by member_casual, total_trip_rideable

  
-- No of user type per month
select member_casual, month,
count(*) as total_trip_month
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean_combined_table_2022`
group by member_casual, month
order by member_casual


--No of user type per day
select member_casual, day_of_week,
count(*) as total_trip_day
from `lithe-bazaar-443112-i8.Cycalitic_Trips.clean_combined_table_2022`
group by member_casual, day_of_week
order by member_casual, total_trip_day


-- No of user type per hour of day
