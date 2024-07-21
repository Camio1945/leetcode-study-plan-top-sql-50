# https://leetcode.com/problems/consecutive-numbers/description/?envType=study-plan-v2&envId=top-sql-50
# Find all numbers that appear at least three times consecutively.
#
DROP TABLE
IF
  EXISTS Logs;
CREATE TABLE
IF
  NOT EXISTS Logs ( id INT, num INT );
TRUNCATE TABLE Logs;
INSERT INTO Logs ( id, num )
VALUES
  ( '1', '1' ),
  ( '2', '1' ),
  ( '3', '1' ),
  ( '4', '2' ),
  ( '5', '1' ),
  ( '6', '2' ),
  ( '7', '2' );
/*------------------------------------------------------------------ */
select distinct
  t1.num as ConsecutiveNums 
from
  Logs t1,
  Logs t2,
  Logs t3 
where
  t1.id = t2.id - 1 
  and t2.id = t3.id - 1 
  and t1.num = t2.num 
  and t2.num = t3.num;