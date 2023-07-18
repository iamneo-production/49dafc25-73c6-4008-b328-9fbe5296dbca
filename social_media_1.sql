select count(*) from facebook where DOB_YEAR=1999;
select AGE,count(*) from facebook group by AGE;
select count(*) from facebook where AGE>15;
select (count(case when GENDER='female' then 1 end)/count(*))*100 from facebook;
select (count(case when GENDER='female' then 1 end)/count(*))*100 from facebook where AGE<=17;