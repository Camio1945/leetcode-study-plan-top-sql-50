# https://leetcode.com/problems/average-time-of-process-per-machine/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the average time each machine takes to complete a process.
# 
DROP TABLE IF EXISTS Activity;
CREATE TABLE
IF
  NOT EXISTS Activity ( machine_id int, process_id int, activity_type ENUM ( 'start', 'end' ), timestamp float );
TRUNCATE TABLE Activity;
INSERT INTO Activity ( machine_id, process_id, activity_type, timestamp )
VALUES
  ( '0', '0', 'start', 0.712 ),
  ( '0', '0', 'end', 1.52 ),
  ( '0', '1', 'start', 3.14 ),
  ( '0', '1', 'end', 4.12 ),
  ( '1', '0', 'start', 0.55 ),
  ( '1', '0', 'end', 1.55 ),
  ( '1', '1', 'start', 0.43 ),
  ( '1', '1', 'end', 1.42 ),
  ( '2', '0', 'start', 4.1 ),
  ( '2', '0', 'end', 4.512 ),
  ( '2', '1', 'start', 2.5 ),
  ( '2', '1', 'end', 5 );
/*------------------------------------------------------------------ */
select
  t1.machine_id,
  ROUND( AVG( t2.`timestamp` - t1.`timestamp` ), 3 ) as processing_time 
from
  Activity as t1,
  Activity as t2 
where
  t1.machine_id = t2.machine_id 
  and t1.process_id = t2.process_id 
  and t1.activity_type = 'start' 
  and t2.activity_type = 'end' 
group by
  t1.machine_id;