select (sum(case when gender='female' then 1 else 0 end)/count(*)*100)as FEMALE_PERCENTAGE
from facebook;