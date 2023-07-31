-- Write a SQL Query to find the total number of users who were born in the year 1999?
select count(*)
from FACEBOOK
where dob_year=1999;

-- Write a SQL Query to count the number of social media users for each age group?
select age,count(*)
from FACEBOOK
group by age
order by age;

-- Write a SQL Query to count the number of social media users for each age group?
select count(*)
from facebook 
where age>15;

-- Write a SQL Query to find the percentage of female users who are using social media?
SELECT(SUM(CASE WHEN GENDER ='female' THEN 1 ELSE 0 END)/ COUNT(*)*100) AS FEMALE_PERCENTAGE
FROM FACEBOOK;

-- Write a SQL Query to find the percentage of female users among users above the age of 17?
SELECT(SUM(CASE WHEN GENDER ='female' AND age>17 THEN 1 ELSE 0 END)/ COUNT(*)*100) AS FEMALE_PERCENTAGE
FROM FACEBOOK;