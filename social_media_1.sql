select count(*) from facebook where DOB_YEAR=1999;
select age,count(*) from facebook group by age;
select count(*) from facebook where age>15;
select (count(case when gender='female' then 1 end)/count(*))*100 from facebook;
select (count(case when gender='female' then 1 end)/count(*))*100 from facebook where AGE<=17;