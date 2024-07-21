# https://leetcode.com/problems/biggest-single-number/description/?envType=study-plan-v2&envId=top-sql-50
# Find the largest single number. If there is no single number, report null.
#
DROP TABLE
IF
  EXISTS MyNumbers;
CREATE TABLE MyNumbers ( num INT );
INSERT INTO MyNumbers ( num )
VALUES
  ( 8 ),
  ( 8 ),
  ( 3 ),
  ( 3 ),
  ( 1 ),
  ( 4 ),
  ( 5 ),
  ( 6 );
/*------------------------------------------------------------------ */



