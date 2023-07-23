--write a sql query to find the total number of users who were born in the year 1999
select count(*) from FACEBOOK where DOB_YEAR=1999;

--write a sql query to count the number of social media users for each age group
select age,count(*) from FACEBOOK group by age order by age;
SELECT SUM(CASE WHEN age < 18 THEN 1 ELSE 0 END) AS "Under 18", sum(CASE WHEN age BETWEEN 18 AND 60 THEN 1 ELSE 0 END) AS "18-60",sum(CASE WHEN age > 60 THEN 1 ELSE 0 END) AS "above 60" FROM FACEBOOK;

--write a sql query to find the total users in social media above age 15
select count(*) from FACEBOOK where age>15;

--write a sql query to find the percentage of female users who are using social media
select (sum(case when gender='female' then 1 else 0 end)/count(*)*100.00) from FACEBOOK;

--write a sql query to find the percentage of female users among users above the age 17
select (sum(case when gender='female' then 1 else 0 end)/count(*)*100) from FACEBOOK where age>17;