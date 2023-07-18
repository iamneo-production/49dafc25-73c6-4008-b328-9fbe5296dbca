select count(*) from facebook where DOB_YEAR=1999;
select (count(case when gender='female' then 1 end)/count(*))*100 from facebook;
select count(*) from facebook where AGE>15;
select floor(datediff(curdate(),concat(DOB_YEAR,'-',DOB_MONTH,'-',DOB_DATE))/365.25/10)*10 AS age_group,count(*) from facebook group by age_group order by age_group;