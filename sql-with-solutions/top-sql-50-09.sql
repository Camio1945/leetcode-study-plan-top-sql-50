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
select
  t2.id 
from
  Weather as t1,
  Weather as t2 
where
  t2.recordDate = DATE_ADD( t1.recordDate, INTERVAL 1 DAY ) 
  and t2.temperature > t1.temperature;