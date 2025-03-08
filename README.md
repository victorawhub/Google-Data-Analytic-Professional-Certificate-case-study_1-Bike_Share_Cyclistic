![image](https://github.com/user-attachments/assets/21032f71-b82f-4cd4-9985-e1dea56a27dc)# Google Data Analytic Professional Certificate case study_1 Bike_Share_Cyclistic 
Course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone) 

I would like to give a big shout out to 
[Mostafa Elsayed Morse Abdelfattah](https://www.linkedin.com/pulse/google-data-analytics-capstone-case-study-1-cyclisti-mostafa-elsobky/), [Samuel Higgins](https://medium.com/@higgins.samuel98/google-data-analytics-project-cyclistic-case-study-sql-tableau-49df62556213) and [Fillips](https://github.com/spillif/Case-Study-1-Google-Data-Analytics-Cyslistics) for their hardwork, and I very appreciate their effort to make this project and make it to the public. Because of their works, I was able to complete this project by following their guidance. 

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
BigQuery:  [Data Combination](https://github.com/victorawhub/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/01.%20Data%20Combination.sql)

18 csv files are uploaded as tables in the dataset 'Cycalitic_Trips'. Another table named "combined_data_2022" is created, containing 5,667,717 rows of data for the entire year.

### Utilize SQL for Data Process
1. I created a dataset named Cycalitic_Trips in BigQuery and uploaded all 18 csv files. 
2.	I encountered an issue with 6 of the files (from May to October 2022) as their csv file size exceeded the 100 MB limit for uploading to BigQuery. 
3.	To resolve this, I split each of these files into two smaller files by using Power Query in Microsoft Excel and save them as csv UTF-8 format.
4.	When I try to merge all the tables, I encountered an issue with the Month of June 2022 and September 2022 csv files, the data types are mismatch in these 2 csv files. Therefore, I use cast function and change all the data types as STRING.
5.	I am able to merged all the tables into a single table named **combined_table_2022**.

![image](https://github.com/user-attachments/assets/296ba0a6-417c-4930-ab08-03fbe686fea4)

### Data Exploration
BigQuery: [Data Exploration](https://github.com/victorawhub/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/02.%20Data%20exploration.sql)

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

