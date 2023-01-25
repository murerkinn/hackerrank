-- A median is defined as a number separating the higher half of a data set from the lower half.
-- Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

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

-- MySQL
SELECT ROUND(s.lat_n, 4) FROM station s WHERE (SELECT COUNT(*) FROM station
WHERE station.lat_n < s.lat_n) = (SELECT COUNT(*) FROM station WHERE station.lat_n > s.lat_n);
