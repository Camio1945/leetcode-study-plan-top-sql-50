# https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find managers with at least five direct reports.
# 
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee ( id INT, name VARCHAR ( 255 ), department VARCHAR ( 255 ), managerId INT );
TRUNCATE TABLE Employee;
INSERT INTO Employee ( id, name, department, managerId )
VALUES
  ( 101, 'John', 'A', NULL ),
  ( 102, 'Dan', 'A', 101 ),
  ( 103, 'James', 'A', 101 ),
  ( 104, 'Amy', 'A', 101 ),
  ( 105, 'Anne', 'A', 101 ),
  ( 106, 'Ron', 'B', 101 );
/*------------------------------------------------------------------ */



