-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345.
-- Truncate your answer to 4 decimal places.

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
SELECT ROUND(SUM(lat_n), 4) FROM station WHERE lat_n > 38.7880 AND lat_n < 137.2345;

-- MySQL Solution 2
SELECT ROUND(SUM(lat_n), 4) FROM station WHERE lat_n BETWEEN 38.7880 AND 137.2345;
