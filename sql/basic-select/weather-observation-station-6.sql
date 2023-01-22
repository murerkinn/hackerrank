-- Query the list of CITY names starting with vowels (a, e, i, o, u) from STATION.
-- Your result cannot contain duplicates.

-- The STATION table is described as follows:

-- ------------------------------
-- | Field | Type               |
-- ------------------------------
-- | ID    | NUMBER             |
-- | CITY  | VARCHAR2(21)       |
-- | STATE | VARCHAR2(2)        |
-- | LAT_N | NUMBER             |
-- | LONG_W| NUMBER             |
-- ------------------------------

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- MySQL Solution 1
SELECT DISTINCT city FROM station WHERE city RLIKE "^[aeiou].*$";

-- MySQL Solution 2
SELECT DISTINCT city FROM station WHERE LEFT(city, 1) IN ('a', 'e', 'i', 'o', 'u');
