# https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
# 
DROP TABLE IF EXISTS Weather;
CREATE TABLE
IF
  NOT EXISTS Weather ( id INT, recordDate DATE, temperature INT );
TRUNCATE TABLE Weather;
INSERT INTO Weather ( id, recordDate, temperature )
VALUES
  ( 1, '2015-01-01', 10 ),
  ( 2, '2015-01-02', 25 ),
  ( 3, '2015-01-03', 20 ),
  ( 4, '2015-01-04', 30 );
/*------------------------------------------------------------------ */



