# Google Data Analytic Professional Certificate case study_1 Bike_Share_Cyclistic 
Course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone) 

I would like to give a big shout out to 
[Mostafa Elsayed Morse Abdelfattah](https://www.linkedin.com/pulse/google-data-analytics-capstone-case-study-1-cyclisti-mostafa-elsobky/), [Samuel Higgins](https://medium.com/@higgins.samuel98/google-data-analytics-project-cyclistic-case-study-sql-tableau-49df62556213) and [Fillips](https://github.com/spillif/Case-Study-1-Google-Data-Analytics-Cyslistics) for their hardwork. I am very appreciate their effort to make this project and make it to the public, so that I was able to complete this project by using their projects as my guidance.  

## Introduction
Welcome to my first project as a junior data analyst for the Google Data Analytics Professional Certificate. After I completing the 8 courses in this professional journey and I had obtained Excel, BigQuery SQL, Tableau knowledges and skills. Therefore, I am very excited to take a challenge and apply the knowledge that I have learned into this real-world. This is my capstone project to mark the final step in completing the professional certificate which show my ability to analyse and extract insights from complex data. 

In this project, I will be working with a large dataset using Excel and BigQuery to demonstrate my proficiency in data analysis. I will also be visualizing my findings using Tableau. In the interest of answering the key business questions, I will follow the 6 steps of basic concept of the data analysis process:

1. **Ask**: A clear statement of the business task
2. **Prepare**: A description of all data sources used
3. **Process**: Documentation of any cleaning or manipulation of data
4. **Analyze**:  A summary of my analysis
5. **Share**: Supporting visualizations and key findings
6. **Act**: My top three recommendations based on my analysis

## About the Company
A bike-share company called Cyclistic has launched in 2016, has grown significantly, boasting a fleet of 5,824 geotracked bicycles and 692 stations across Chicago. The program allows users to unlock bikes from one station and return them to any other station, offering flexible pricing plans such as single-ride passes, full-day passes, and annual memberships. Customers who opt for single-ride or full-day passes are categorized as casual riders, while those with annual memberships are considered Cyclistic members. The company’s finance analysts have determined that annual members are more profitable than casual riders, prompting the director of marketing, Moreno, to focus on converting casual riders into annual members as a key strategy for future growth.

Moreno believes that targeting casual riders, who are already familiar with Cyclistic and use its services, presents a significant opportunity for conversion. To achieve this, the marketing team aims to better understand the differences between annual members and casual riders, identify the reasons casual riders might purchase memberships, and explore how digital media can enhance marketing efforts. By analyzing Cyclistic’s historical bike trip data, the team hopes to uncover trends and insights that will inform effective marketing strategies to convert casual riders into annual members, ultimately driving the company’s growth and profitability.

## Scenario
I am a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve my recommendations, so they must be backed up with compelling data insights and professional data visualizations.


### Quick Links

Data source: [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) [accessed on 16 Feb 2025]

SQL Queries:

  1. [Data Combining](https://github.com/victorawhub/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/01.%20Data%20Combination.sql)
 
  2. [Data Exploration](https://github.com/victorawhub/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/02.%20Data%20exploration.sql)

  3.[Data Cleaning](https://github.com/victorawhub/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/03.%20Data%20cleaning.sql)

  4. [Data Analysis](https://github.com/victorawhub/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/04.%20Analyzing%20Data.sql)

Data Visualiztion: [Tableau](https://public.tableau.com/app/profile/victor.aw7685/viz/GoogleProfessionalAnalyticCaseStudy1-Cyclistic/Map) 

## Ask
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

Moreno has assigned you the first question to answer: **How do annual members and casual riders use Cyclistic bikes differently?**

### Breakdown the first question
1. What is the problem I am trying to solve?
   - Difference between the member and casual users
      + How casual and member use Cyclistics
      + Cyclistics information: travelling distance, vehicle types and member types
   - Growth per month   
      + The usage of numbers (casual vs member) -> To focus on casual type activity and vehicle type

2. How can my insights drive business decisions?
   - Providing the difference between member types
      + Their activity impacts their pricing plan decision
      + The most active station
   - Providing the daily usage of casual and member type
   - Insight into the Cyclistic metrics:
      - Member Behaviours
        + Rideable Type
        + Travelling type
        + Activity log
  > From these insights, my team will design a new marketing strategy to convert casual riders into annual members.

#### Identified the business task
The aim of the business task is to study the variations between how member and casual rider use Cyclistic bike.
The idea is to use this data to create a new marketing strategies to convert casual riders into annual members because Moreno wants to maximize the number of annual memberships. 

#### Identified Key Stakeholders
 + **The director of marketing**: who is responsible for the development of campaigns and initiatives to promote the bike-share program.

 + **The Cyclistic executive team**: who is notoriously detail-oriented and will decide whether to approve the recommended marketing program.

 + **The Cyclistic marketing analytics team**: which is a team of data analysts who are responsible for collecting, analysing, and reporting data that helps guide marketing strategies.

## Prepare
### Data Location/Data Source 

I use the Cyclistic's histroical data for this project to analyze from Jan 2022 to Dec 2022 which can be downloaded from [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html).

### Download the Data
I am going to analyze the year of 2022 and download the all the 12 months zip file from 2022.

### Data Organization
To organized the raw data, I had uploaded the data in the [google share drive](https://drive.google.com/drive/folders/13R2SrMPY8uqYKA_-IrGwNBgPgfD-GLeR?usp=sharing).

To keep the file organized and identify, I named all the csv files consistently. There are 18 files for 2022 with naming Sequel number. Month_YYYY. There are 6 csv files from May to October unable to upload to BigQuery due to exceed 100 MB limit, hence I use Microsoft Excel PowerQuery to split them into 2 batch with naming Month_YYYY_batch_sequel number.

### Data Credibility ROCC?
The data are taken from Divvy’s public historical trip data, this data is. 
1. Reliable: This data is accurate, complete, and unbiased.
2. Original: This data is validated by the original source. 
3. Comprehensive: This data contains all the critical information and was collected appropriate to answer the questions. 
4. Current: This data is up to date. But I only focus on FY 2022 to follow the guidance from them, [Mostafa Elsayed Morse Abdelfattah](https://www.linkedin.com/pulse/google-data-analytics-capstone-case-study-1-cyclisti-mostafa-elsobky/), [Samuel Higgins](https://medium.com/@higgins.samuel98/google-data-analytics-project-cyclistic-case-study-sql-tableau-49df62556213) and [Fillips](https://github.com/spillif/Case-Study-1-Google-Data-Analytics-Cyslistics) 
5. Cited: This data is credible and citied from this [source](https://divvy-tripdata.s3.amazonaws.com/index.html)

### Data License 
1. The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement).
2. Do note that data privacy issues prohibit from accessing riders' personal identifiable information. This shows that I would not be able to connect the pass purchases to credite card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.


## Process
I could not process in Excel or Spreadsheet because the maximum that these systems can handle only up to 1,048,576 rows.
Cyclistic dataset has over the maximum Excel and Spreadsheet limit. Therefore, I use BigQuery to combine the mothly data into single table from Jan to Dec 2022.

1. Uploading data
Create dataset and loading raw data from share drive.

2. Combining data
Combine all the 18 csv files into one single new table named "combined_table_2022". FY 2022 contains 5,667,717 rows.

3. Exporing data integrity
  - Checking the duplication values for each fields
  - Checking the duplication ride_id field
  - ride_id is the primary key since it dedicated to each travel ride.
     + ride_id maximum length is 16 characters.
  - rideable_type contains 3 unique values: electric_bike, classic_bike, docked_bike.
  - the longest and shortest ride duration from started_at/ ended_at present TIMESTAMP (YYYY-MM-DD hh:rr:ss UTC).
     + Filter out the negative value
     + Identify the problematic row
  -  Review the min/ max of ride length:
     + Calculate the time usage: more than a day and less than a minute.
  - Explore start_stastion_name / start_station_id / end_station_name / end_station_id
  - Find out the null values in start_station_name, start_station_id, end_station_name, end_station_id.
  - Check if start_station_name / start_station_id / end_station_name / end_station_id is null but have value in each of the table.
  - Check start_lat / start_lng / end_lat / end_lng.
  - Check the number of trips in both member and casual riders.

### Data Combination 
SQL:  [Data Combination](https://github.com/victorawhub/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/01.%20Data%20Combination.sql)

18 csv files are uploaded as tables in the dataset 'Cycalitic_Trips'. Another table named "combined_data_2022" is created, containing 5,667,717 rows of data for the entire year.

### Utilize SQL for Data Process
1. I created a dataset named Cycalitic_Trips in BigQuery and uploaded all 18 csv files. 
2.	I encountered an issue with 6 of the files (from May to October 2022) as their csv file size exceeded the 100 MB limit for uploading to BigQuery. 
3.	To resolve this, I split each of these files into two smaller files by using Power Query in Microsoft Excel and save them as csv UTF-8 format.
4.	When I try to merge all the tables, I encountered an issue with the Month of June 2022 and September 2022 csv files, the data types are mismatch in these 2 csv files. Therefore, I use cast function and change all the data types as STRING.
5.	I am able to merged all the tables into a single table named **combined_table_2022**.

![image](https://github.com/user-attachments/assets/296ba0a6-417c-4930-ab08-03fbe686fea4)

### Data Exploration
SQL: [Data Exploration](https://github.com/victorawhub/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/02.%20Data%20exploration.sql)

1. **Check the duplication values for each fields**


![image](https://github.com/user-attachments/assets/c0fa0822-e079-4e14-9dbe-33e24ea03f0d)


2. **Check the duplication ride_id field. There is no Duplication of ride_id.**

 
![image](https://github.com/user-attachments/assets/e3f48751-a750-4ff3-a16b-e09682c7341c)


3. **Check the total rows of data for the entire year**


![image](https://github.com/user-attachments/assets/9d1082fa-6408-4805-9834-17bdc0a02577)


4. **Check the length of the ride_id** 


![image](https://github.com/user-attachments/assets/0fb9c2f5-a88a-478d-8d72-a9d4ce9bfddc)


   The minimum of length character ride_id is 7 and the maximum of length character ride_id is 16.


5. **Check the rideable_type** 


![image](https://github.com/user-attachments/assets/27831077-1b2e-4c3f-a904-90052400b999)


   There are 3 unique types of bikes rideable_type in our data.

6. **Find out the longest and shortest ride duration from started_at and ended_at follow TIMESTAMP - YYYY-MM-DD hh:mm:ss UTC.**


![image](https://github.com/user-attachments/assets/2aa8ac46-8dc5-4575-b44c-348f1ba1a592)


   There is a negative value in the table. It could be the timestamp were logged incorrectly in the field ended_at or the timestamps were recorded in different time zones.


7. **To solve the negative value, Filter out the negative value**


![image](https://github.com/user-attachments/assets/b461ffde-8b68-451d-a895-e6cb56d9aeb9)


8. **Identify the problematic row**


![image](https://github.com/user-attachments/assets/ff092d86-7107-4842-a6aa-f8e66bddfb06)


   Total 86 rows error where the time interval in ended_at is earlier and before the started_at. 


9. **Calculate the usage time more than or equal to a day (1440 mins in a day)**


![image](https://github.com/user-attachments/assets/fd21f34f-5d5d-419b-888b-a1032bfe0bf0)


10. **Calculate the usage time less than or equal to a minute**


![image](https://github.com/user-attachments/assets/f2d6332d-2ac0-47b5-a5d7-62243de0bb6e)


11. **Find out how many number of rows in start_stastion_name, start_station_id, end_station_name, end_station_id**


   **start_station_name**

![image](https://github.com/user-attachments/assets/404e3538-72b5-4f5f-86b1-a6f8fa4a7791)


   **start_station_id**

![image](https://github.com/user-attachments/assets/d0628884-18ef-4a98-8f76-efe12fbbf176)


   **rows of missing start station name & id**

![image](https://github.com/user-attachments/assets/4f755fea-56d8-4f1b-8d68-ea67d3e34efd)


   **end_station_name**

![image](https://github.com/user-attachments/assets/6ab2f6fc-0fa8-4e10-81ae-c6d27e6216fb)


   **end_station_id**
 
![image](https://github.com/user-attachments/assets/1264cd35-d950-4ebf-9996-6938009c683c)


   **rows of missing end station name & id**

![image](https://github.com/user-attachments/assets/4d707fae-dd34-460c-ac5a-a1bb20fd1410)


12. **Find out the null values in start_station_name, start_station_id, end_station_name, end_station_id.**

   **start_station_name**

![image](https://github.com/user-attachments/assets/4550869e-3691-4673-b21a-c6031d8972e0)


   **start_station_id**

![image](https://github.com/user-attachments/assets/f9baacd8-bb49-42b3-a425-b1bb4c8af768)


  **end_station_name**

![image](https://github.com/user-attachments/assets/bcb89024-8d12-4aa9-a551-d837dd350be6)


   **end_station_id**

![image](https://github.com/user-attachments/assets/93ba5e26-8d66-4244-a2e8-268b0a40a515)


13. **Check if start_station_name / start_station_id / end_station_name / end_station_id is null but have value in each of the table.**


   **start station name has name but no start station id**


![image](https://github.com/user-attachments/assets/35819c0a-c0a9-4a73-b80c-244c4ad37510)



   **start station id has id number but no start station name**


![image](https://github.com/user-attachments/assets/3031c31d-ea36-4c43-80ad-11e3281e85f4)


   **both start station name and id is null**


![image](https://github.com/user-attachments/assets/6c252ca0-5b84-49d9-8091-92dc3afbc417)



   **end station name has name but end station id is null**

![image](https://github.com/user-attachments/assets/6c7729a5-20ef-4c7c-8a18-293bd3332653)



   **end station id has id number but end station name is null**


![image](https://github.com/user-attachments/assets/773865f3-ca0c-4c6e-8d01-2273c1d00316)



   **both end station name and id are null**



![image](https://github.com/user-attachments/assets/8297f579-f39f-43df-9ecd-defa4cb1f594)




14.  **Check start_lat / start_lng / end_lat / end_lng**



   **start_lat/start_lng**



   Use Boolean logic 'or' 




   ![image](https://github.com/user-attachments/assets/86aad3d6-e60a-4c3c-977b-884a35421254)



   Use Boolean logic 'and'




   ![image](https://github.com/user-attachments/assets/941f8604-11d6-47c3-ab39-57c427864a1f)



  **end_lat/ end_lng data**


  Use Boolean logic 'or' 



 
  ![image](https://github.com/user-attachments/assets/a44797d6-1761-4094-af9f-e3f5062e3205)



  Use Boolean logic 'and'



  ![image](https://github.com/user-attachments/assets/f4be3700-ad7c-4d45-bc16-410560458d3d)



15. **Check the number of trip in both member and casual riders**

   ![image](https://github.com/user-attachments/assets/79ea7b6f-d484-4e94-b4c4-75ebe36dc970)


### Data Cleaning


1. Find if can replace the null values.

2. Removed all the results (rows) with null values.

3. Created a new table with:

  - **ride_length**: duration of the trip
  - **day_of_week**: day starting the trip
  - **month**: month extract from trip starting day

4. **Find out how many ride_length > 1 day**


![image](https://github.com/user-attachments/assets/85c31f0a-ac03-41ed-9b43-a023d60a3a51)


  Those ride_length data with more than a day and will not consider this data to analyze, it will be clean out the data.


5. **Create a new table for ride_length > 1 min and < 1 day**


   ![image](https://github.com/user-attachments/assets/d0786e68-3c29-4c29-a7f4-98bfec34237c)


This table will be taken into analysis. 



## Analyze and Share

SQL: [Data Analysis](https://github.com/victorawhub/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/04.%20Analyzing%20Data.sql)

Data Visualiztion: [Tableau](https://public.tableau.com/app/profile/victor.aw7685/viz/GoogleProfessionalAnalyticCaseStudy1-Cyclistic/Map) 


> How do annual members and casual riders use Cyclistic bikes differently? 


First of all, I compare the bike types among member and casual riders.



![image](https://github.com/user-attachments/assets/c36c2375-e0e7-4f37-a588-106044f8a21e)


Secondly, Let's take a closer look into the Number of Trip in all types of bike and Grand total number of trips.


![image](https://github.com/user-attachments/assets/eb72dbf6-61d7-4269-8bd8-04a164800c04)



Member users made up almost 60% (2.5 millions trips) of the total trips for the year of 2022. Among the bike types, Member riders were only use classic and eletric bicycle. Member riders using classical bikes (1.6 millions trips) are almost double than casual (0.8 millions trips). Casual bikers using all types of bike including Docked bike, which is not a favourable for the member.


Next, the Distribution of Total trip and Average Travel Time per month


![image](https://github.com/user-attachments/assets/4812df20-6bbb-4a99-bd76-f93a94338b54)



1. **Months**:

- **Total trips per month**:

Both Member and Casual membership types are sharing their behaviour because their usage focus more during the Spring and Summer seasons. Both membership types shows decreasing usage when the winter starts. The number of casual riders using Cylistics increased at April and decreased right after July to August period. The trends for member riders is stretched up to October (before the winter season). Both of riders are share their favourable time in July.

Based from Total Trips per month of the line chart, Summer was the great season for Cyclistsics.
   + Member: Apr - Aug.
   + Casual: May - Jul.

- **Average Travel Time per month**:

Casual riders (travellers and tourist) spent more time for Cyclistics than member riders (residents, citizens, students, etc.)

**The average of month in average travel time for**:
   + Member: 12.2 mins
   + Casual: 22.5 mins


Therefore, Average travel time of Casual riders are longer than Member riders throghout FY 2022.


2. **Days of Week**:


![image](https://github.com/user-attachments/assets/23016fca-a99c-4838-8b9e-11bbe5ff21c0)


 - **Total trips per Days of Week**:

Member riders tended to prefer using Cyclistics on weekdays. On the other hand, travellers and tourists began their trip on the weekends. 


- **The average of the Day of Week in average travel time**:
  + Member: 12.8 mins
  + Casual: 23.7 mins 

Casual riders spent daily 24 minutes meanwhile Member riders are only 13 minutes.



3. **Hours of the Day**:


![image](https://github.com/user-attachments/assets/e00bc91b-85b3-4716-b1d6-a8bab321325b)


  - **Total Trips per Hours of the Day**:


Member riders travels more often in early morning and evening (typical business hour). Early in the morning from 6 to 8 am when they go to work and evening from 5 to 7 pm when they go back home. Whereas, the number of trips for Casual riders starts to increase at 7 am and decrease at 5 pm. 

Both membership types are shows the same pattern in the line chart, the number of trips starts to decrease in evening 5 pm. 


  - **The average of the Hours of the Day in Average Travel Time**:

Based on the **Hours of the Day** line chart, For Member riders throughout the day is consistency, Member riders did not spend much time in the ride (average 13 minutes ride). For Casual riders, their favour travel time from 10 to 3 pm and 22 pm to 1 am. Casual riders tends to spend more time (average 23 minutes) than Member riders. 


![image](https://github.com/user-attachments/assets/419a6ba4-bbf8-40d9-9d6f-0b399b2f9031)


    Look at the Grand Total:
     + Member: 12.6 mins
     + Casual: 22.7 mins



Hence, 8:00 Am - 17:00 PM was the most favorite travel time for Member, while Casual usually use Cyclistics from 12:00 PM - 17:00 PM.


I can assume that both Member and Casual riders are prefer using Cyclistics in Spring and Summer seasons. Member riders tend to using the bike from their space to work and vice versa during the working day peak hours (6 am to 8 am and 5 pm to 7 pm). Casual riders spends their leisure time using different types of bike to enjoy the weekends from 10 am to 2 pm. Casual riders have double up the usage duration than Member riders, and they starts to decline in ride in the evening from 5 pm to 8 pm. 


##### For further understand the difference between Casual and Member Riders, I have to explore into their Start and End Location.


  - **The preferred locations for Casual and Member riders**



![image](https://github.com/user-attachments/assets/e72e33a4-d304-4b56-ae51-17bc7b61c7cd)


   + **Member riders** began their trips between the stations that they are often visit: Universities, schools, parks, residential areas, public/ priveate instituations, their workplace, etc.


   + **Casual riders** is in the opposite side while they are interested in travelling from famous places to city monuments (museums, parks, etc.). Their favorite location was habour coasts.


Typically, Casual riders are mostly travellers, touris; while Member are domestic citizen (Chicagoans).



  - **Top 50 Start and End Locations**



![image](https://github.com/user-attachments/assets/c94f1954-2f3b-4193-be08-aac00a70908b)



Casual riders have frequently started their trips from the stations in the vicinity of museums, parks, beaches, harbour points and aquariums; while Member riders have begun their journeys from stations close to universities, residential areas, restaurants, hospitals, grocery stores, theatre, schools, banks, factories, train stations, parks and plazas.


**Summary of Insights:**

Casual | Member 
--- | ---
Prefer using bikes during the daytime, more frequently over the weekends in Spring and Summer for leisure activities. | Prefer riding bikes on weekdays during the business hours (8 am - 5pm) in Spring and Summer, with a drop off in the winter months.
Travel 2 times longer duration (average ride time = 22.5 mins) but less frequently (1.7 millions trips) than members | Travel more frequently (2.5 millions trips) but shorter ride duration (approximately half of casual riders' trip duration, average ride time = 12.2 mins)
Utilize all the 3 different types of bikes: Classic, Electric and Docked bike | Did not ride Docked Bike
Start and end their journeys near parks, museums, along the coast and other recreational sites | Start and end their trips close to universities, residential and commercial areas



## Act 

After sharing these findings about the differences between Casual and Member riders, the marketing department can start to develop marketing strategies to target Casual riders and persuade them to become Member riders.  

Here are three of my recommendations:

  + The Marketing Campaigns can be conducted before/during Spring and Summer seasons and on the weekend daytime (9 am - 5 pm) at the Casual riders’ favorable tourist/recreational locations.
  + Since the Casual riders mostly using program on seasonal and weekend basis, we may introduce the new membership type: Seasonal pass, weekend-only pass or Day pass (24/ 48/72 hours pass).
  + Marketing department can offer Cashback/Loyalty program for Casual riders when they convert to Member riders and offer discounts for longer rides may incentive Casual riders and attract Member riders to increase their riding time. 



## Conclusion
**Thank you for taking the time to read my capstone project!**

This project allowed me to go through the entire data analysis process using real-world data and business questions. I am excited to continue growing in the field of data analysis.

