SELECT (sum(CASE WHEN GENDER='female' and age>17
then 1 else 0 end)/COUNT(*)*100) AS FEMALE_PERCENTAGE 
FROM FACEBOOK;