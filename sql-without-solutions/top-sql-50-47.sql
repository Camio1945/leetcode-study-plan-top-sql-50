# https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the second highest salary from the Employee table. If there is no second highest salary, return null (return None in Pandas).
# 

DROP TABLE
IF
  EXISTS Employee;
CREATE TABLE Employee ( id INT, salary INT );
TRUNCATE TABLE Employee;
INSERT INTO Employee ( id, salary )
VALUES
  ( '1', '100' ),
  ( '2', '200' ),
  ( '3', '300' );
/*------------------------------------------------------------------ */


