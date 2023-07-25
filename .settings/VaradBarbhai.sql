select count(*)
from FACEBOOK
where dob_year=1999;

select age,count(*)
from FACEBOOK
group by age
order by age;

select count(*)
from facebook 
where age>15;

SELECT(SUM(CASE WHEN GENDER ='female' THEN 1 ELSE 0 END)/ COUNT(*)*100) AS FEMALE_PERCENTAGE
FROM FACEBOOK;

SELECT(SUM(CASE WHEN GENDER ='female' AND age>17 THEN 1 ELSE 0 END)/ COUNT(*)*100) AS FEMALE_PERCENTAGE
FROM FACEBOOK;