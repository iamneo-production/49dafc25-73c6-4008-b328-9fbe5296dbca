
--1. Write a SQL Query to find the total number of users who were born in the year 1999
select count(*) from FACEBOOK
where dob_year=1999;

--2. Write a SQL query to count the number of social media users for each age group
select age, count(*) as age_group from facebook
group by age;

--3.Write a SQL Query to find total users in social media above age 15
select count(*) from FACEBOOK
where age>15;

--4.Write a SQL Query to find the percentage of female users who are using social media
select (sum(case when gender='female' then 1 else 0 end)/count(*)*100)as FEMALE_PERCENTAGE
from facebook;

--5.Write a SQL Query to find the percentage of female users among users above the age of 17 
select (sum(case when gender='female' and age>17 then 1 else 0 end)/count(*)*100) as FEMALE_PERCENTAGE
from facebook;
