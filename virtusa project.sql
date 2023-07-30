--total no of users born in year 1999
select count(*) from facebook where dob_year=1999;

--no of users for each age group
select count(*) from facebook;
select age,count(*) from facebook group by age order by age;

--total users above age 15
select count(*) from facebook where age>15;

--percentage of female users
select count(*) from facebook where gender='female';
select (sum(case when gender='female' then 1 else 0 end)/count(*))*100
as per_female from facebook;

--percentage of female users above age 17 years
select count(*) from facebook where gender='female' and age>17;
select (sum(case when gender='female' and age>17 then 1 else 0 end)/count(*))*100
as per_female from facebook;


