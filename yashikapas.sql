/*1.Write a SQL Query to find the total number of users who were born in th eyear 1999*/
select count(*)
from FACEBOOK
where dob_year=1999;

/*2.Write a SQL Qery to count the number of social media users for each age group*/
select age,count(*)
from facebook
group by age 
order by age;

/*3.Write a SQL Qery to find total users in social media above age 15*/
select count(*) 
from facebook
where age>15;

/*4.Write a SQL Qery to find the percentage of female users who are using social media*/
SELECT (SUM(CASE WHEN GENDER = 'female' THEN 1 ELSE 0 END)  / COUNT(*)*100) AS FEMALE_PERCENTAGE
FROM FACEBOOK;

/*5.Write a SQL Qery to find the percentage of female users among users above the age of 17*/
SELECT (sum(CASE WHEN GENDER = 'female' and age>17  THEN 1 ELSE 0 END)  / COUNT(*)*100) AS FEMALE_PERCENTAGE
FROM FACEBOOK;
