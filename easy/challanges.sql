-- Query all columns (attributes) for every row in the CITY table.
    SELECT * FROM CITY ;

-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT *  
FROM CITY  
WHERE POPULATION > 100000  
AND CountryCode = 'USA';

-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT NAME FROM CITY WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA';

-- Query all columns for a city in CITY with the ID 1661.
SELECT * FROM CITY WHERE ID = 1661;

-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';

-- Query a list of CITY and STATE from the STATION table.
Query a list of CITY and STATE from the STATION table.

-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT CITY  FROM STATION  WHERE MOD(ID,2) = 0; -- The SELECT DISTINCT statement is used to return only distinct (different) values.

-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select distinct city
from station
where not (city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%');

--- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
select CITY,LENGTH(CITY) from STATION order by Length(CITY) asc, CITY limit 1; 
select CITY,LENGTH(CITY) from STATION order by Length(CITY) desc, CITY limit 1; 
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE '%a' 
AND CITY NOT LIKE '%e'
AND CITY NOT LIKE '%i'
AND CITY NOT LIKE '%o'
AND CITY NOT LIKE '%u';

---- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u')
OR LOWER(SUBSTR(CITY,-1,1)) NOT IN ('a','e','i','o','u');

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT LIKE 'A%' 
  AND CITY NOT LIKE 'E%'
  AND CITY NOT LIKE 'I%'
  AND CITY NOT LIKE 'O%'
  AND CITY NOT LIKE 'U%'
  AND CITY NOT LIKE '%a'
  AND CITY NOT LIKE '%e'
  AND CITY NOT LIKE '%i'
  AND CITY NOT LIKE '%o'
  AND CITY NOT LIKE '%u';





