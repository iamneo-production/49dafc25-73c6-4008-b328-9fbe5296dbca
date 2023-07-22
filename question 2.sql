select age, count(*) as age_group from facebook
group by age
order by age;
