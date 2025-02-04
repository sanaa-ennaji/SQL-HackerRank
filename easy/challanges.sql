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
