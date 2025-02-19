-- create new clean table & new column (ride_length)
create table Cycalitic_Trips.clean_combined_table_2022 as
  select * , (
    extract(HOUR from (ended_at - started_at)) * 60 +
    extract(MINUTE from (ended_at - started_at)) +
    extract(SECOND from (ended_at - started_at)) / 60) as ride_length
   from`lithe-bazaar-443112-i8.Cycalitic_Trips.combined_table_2022`

  
-- check the new table does contain new column 
select *
   from`lithe-bazaar-443112-i8.Cycalitic_Trips.clean_combined_table_2022`


--
