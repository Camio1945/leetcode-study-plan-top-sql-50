# https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
DROP TABLE IF EXISTS Customer;
CREATE TABLE
IF
  NOT EXISTS Customer ( id INT, name VARCHAR ( 25 ), referee_id INT );
TRUNCATE TABLE Customer;
INSERT INTO Customer ( id, name, referee_id )
VALUES
  ( 1, 'Will', NULL ),
  ( 2, 'Jane', NULL ),
  ( 3, 'Alex', 2 ),
  ( 4, 'Bill', NULL ),
  ( 5, 'Zack', 1 ),
  ( 6, 'Mark', 2 );
/*------------------------------------------------------------------ */



