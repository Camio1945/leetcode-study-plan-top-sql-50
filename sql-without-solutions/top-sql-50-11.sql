# https://leetcode.com/problems/employee-bonus/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to report the name and bonus amount of each employee with a bonus less than 1000.
# 
DROP TABLE IF EXISTS Employee, Bonus;
CREATE TABLE
IF
  NOT EXISTS Employee ( empId INT, name VARCHAR ( 255 ), supervisor INT, salary INT );
CREATE TABLE
IF
  NOT EXISTS Bonus ( empId INT, bonus INT );
TRUNCATE TABLE Employee;
INSERT INTO Employee ( empId, name, supervisor, salary )
VALUES
  ( 3, 'Brad', NULL, 4000 ),
  ( 1, 'John', 3, 1000 ),
  ( 2, 'Dan', 3, 2000 ),
  ( 4, 'Thomas', 3, 4000 );
TRUNCATE TABLE Bonus;
INSERT INTO Bonus ( empId, bonus )
VALUES
  ( 2, 500 ),
  ( 4, 2000 );
/*------------------------------------------------------------------ */



