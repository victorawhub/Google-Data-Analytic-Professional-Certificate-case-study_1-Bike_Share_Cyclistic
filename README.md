# Google Data Analytic Professional Certificate case study_1 Bike_Share_Cyclistic 
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
1. [Data Combining](https://github.com/victoraw97/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/01.%20Data%20exploration.sql)
2. [Data Exploration](https://github.com/victoraw97/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/02.%20Data%20Combination.sql)
3.[Data Cleaning](https://github.com/victoraw97/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/03.%20Data%20cleaning.sql)
4. [Data Analysis](https://github.com/victoraw97/Google-Data-Analytic-Professional-Certificate-case-study_1-Bike_Share_Cyclistic/blob/main/04.%20Analyzing%20Data.sql)

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

### Identified the business task
The aim of the business task is to study the variations between how member and casual rider use Cyclistic bike.
The idea is to use this data to create a new marketing strategies to convert casual riders into annual members because Moreno wants to maximize the number of annual memberships. 

#### Identified Key Stakeholders
**The director of marketing**: who is responsible for the development of campaigns and initiatives to promote the bike-share program.
**The Cyclistic executive team**: who is notoriously detail-oriented and will decide whether to approve the recommended marketing program.
**The Cyclistic marketing analytics team**: which is a team of data analysts who are responsible for collecting, analysing, and reporting data that helps guide marketing strategies.

## Prepare
### Data Source 

I use the Cyclistic's histroical data for this project to analyze from Jan 2022 to Dec 2022 which can be downloaded from [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html). The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement).

To organized the raw data, I had uploaded the data in the [google share drive](url)

note to yourself - upload the raw data in the share drive
