select * from facebook;
select userid from facebook;
select count(*) from facebook where DOB_YEAR=1999;
select (count(case when gender='female' then 1 end)/count(*))*100 from facebook;