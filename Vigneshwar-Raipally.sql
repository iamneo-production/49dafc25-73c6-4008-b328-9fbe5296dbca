/* 1. Write a SQL Query to find the total number of users who were born in the year 1999? */
select count(*) from facebook where DOB_YEAR=1999;

/* 2. Write a SQL Query to count the number of social media users for each age group? */
select AGE,count(*) from facebook group by AGE order by AGE;

/* 3. Write a SQL Query to find the total users in social media above age 15? */
select count(*) from facebook where AGE>15;

/* 4.Write a SQL Query to find the percentage of female users who are using social media? */
select (count(case when GENDER='female' then 1 end)/count(*)*100) from facebook;
select (sum(case when GENDER='female' then 1 else 0 end)/count(*)*100) as percentage_of_female_users from facebook;

/* 5.Write a SQL Query to find the percentage of female users among users above the age 17? */
select (count(case when GENDER='female' and age>17 then 1 end)/count(*)*100) from facebook;
select (sum(case when GENDER='female' and age>17 then 1 else 0 end)/count(*)*100) as percentage_of_female_users from facebook;

select * from facebook;