--Write a sql query to find total number of users who where born in the year 1999
select count(*)
from facebook
where dob_year=1999;

--Write a sql query to count the number of social media users for each age group
select agwore,count(*)
from facebook
group;

--Write a sql query to find total users in social media above age 15
select count(*) 
from facebook
where age>15;

--Write a sql query to find the percentage of female users who are using social media
SELECT (SUM(CASE WHEN GENDER = 'female' THEN 1 ELSE 0 END)  / COUNT(*)*100) AS FEMALE_PERCENTAGE
FROM FACEBOOK;

--Write a sql query to find the percentage of female users among usersabove the age of 17
SELECT (sum(CASE WHEN GENDER = 'female' and AGE>17 THEN 1 ELSE 0 END)  / COUNT(*)*100) AS FEMALE_PERCENTAGE
FROM FACEBOOK;

