-- The PADS
select concat(name, '(', substring(occupation, 1, 1), ')') as name
from occupations
order by name
select concat('There are a total of', ' ', count(occupation), ' ', 
lower(occupation), 's.') as profession
from occupations
group by occupation
order by profession;
-- Weather Observation Station 18 
select ROUND(ABS(MAX(LAT_N) - MIN(LAT_N)) + ABS(MAX(LONG_W) - MIN(LONG_W)), 4) FROM STATION; -- MYSQL