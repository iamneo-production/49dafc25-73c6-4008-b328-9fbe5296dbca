--Sql query to find the total number of users who were born in the year 1999
select count(*) from FACEBOOK where dob_year=1999;
--Sql query to count the number of social media users for each age group
select age, count(*) from FACEBOOK group by age order by age;
--Sql query to find the total users in social media whoose age is above 15
select count(*) from FACEBOOK where age>15;
--Sql query to find the percentage of female users who are using social media
select(sum(case when gender = 'female' then 1 else 0 end) / count(*)*100)as female_percentage from FACEBOOK;
--Sql query to find the percentage of female users among users above the age of 17
select(sum(case when gender = 'female' and age>17 then 1 else 0 end) / count(*)*100) as female_percentage from FACEBOOK;