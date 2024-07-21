# https://leetcode.com/problems/triangle-judgement/?envType=study-plan-v2&envId=top-sql-50
# Report for every three line segments whether they can form a triangle.
#
DROP TABLE
IF
  EXISTS Triangle;
CREATE TABLE
IF
  NOT EXISTS Triangle ( x INT, y INT, z INT );
TRUNCATE TABLE Triangle;
INSERT INTO Triangle ( x, y, z )
VALUES
  ( '13', '15', '30' ),
  ( '10', '20', '15' );
/*------------------------------------------------------------------ */



