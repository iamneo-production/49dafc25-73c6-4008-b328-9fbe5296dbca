/* 1. Write a SQL Query to find the total number of users who were born in the year 1999? */
select count(*) from facebook where DOB_YEAR=1999;
/* 2. Write a SQL Query to count the number of social media users for each age group? */
select AGE,count(*) from facebook group by AGE order by AGE;
/* 3. Write a SQL Query to find the total users in social media above age 15? */
select count(*) from facebook where AGE>15;
/* 4.Write a SQL Query to find the percentage of female users who are using social media? */
select (count(case when GENDER='female' then 1 end)/count(*))*100 from facebook;
select (sum(case when GENDER='female' then 1 else 0 end)/count(*)*100) as percentage_of_female_users from facebook;
/* 5.Write a SQL Query to find the percentage of female users among users above the age 17? */
select (count(case when GENDER='female' and age>17 then 1 end)/count(*))*100 from facebook;
select (sum(case when GENDER='female' and age>17 then 1 else 0 end)/count(*)*100) as percentage_of_female_users from facebook;

describe plan_table;

/* 1. Plan explanation of query1 */
create index facebook_users_born_in_1999_idx on facebook(userid,age,dob_day,dob_year,dob_month,gender,tenure,friend_count,friendships_initiated,likes,likes_received,mobile_likes,mobile_likes_received,www_likes,www_likes_received);
explain plan for select count(*) from facebook where DOB_YEAR=1999;
select * from table(dbms_xplan.display());

/* 2. Plan explanation of query2 */
create index facebook_age_idx on facebook(AGE);
explain plan for select AGE,count(*) from facebook group by AGE order by AGE;
select * from table(dbms_xplan.display());

/* 3. Plan explanation of query3 */
explain plan for select count(*) from facebook where age>15;
select * from table(dbms_xplan.display());

/* 4. Plan explanation of query4 */
create index facebook_percentage_of_female_users_idx on facebook(gender);
explain plan for select(sum(case when GENDER='female' then 1 else 0 end)/count(*)*100) as percentage_of_female_users from facebook;
select * from table(dbms_xplan.display());

/* 5. Plan explanation of query5 */
create index facebook_female_users_above_age_17_percentage_idx on facebook(GENDER);
explain plan for select(sum(case when GENDER='female' and age>17 then 1 else 0 end)/count(*)*100) as percentage_of_female_users from facebook;
select * from table(dbms_xplan.display());