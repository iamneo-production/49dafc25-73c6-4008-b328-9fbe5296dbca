
/*1. Write a SQL Query    to find the total number of users who were born in the year 1999?*/
select count(*)
from FACEBOOK
where dob_year=1999;

/*2. Write a SQL Query to count the number of social media users for each age group?*/
select age,count(*)
from FACEBOOK
group by age
order by age;

/*3. Write a SQL Query to find total users in social media above age 15?*/
select count(*)
from FACEBOOK
where age>15;

/*4. Write a SQL Query to find the percentage of female users who are using social media?*/
select(sum(case when GENDER='Female' THEN 1 ELSE 0 END)/COUNT(*)*100)AS FEMALE_PERCENTAGE
FROM FACEBOOK;

/*5. Write a SQL Query to find the percentage of female users among users above the age of 17?*/
SELECT (sum(CASE WHEN GENDER='female' and age>17
then 1 else 0 end)/COUNT(*)*100) AS FEMALE_PERCENTAGE 
FROM FACEBOOK;