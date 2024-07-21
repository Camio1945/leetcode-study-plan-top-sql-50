# https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
# 
DROP TABLE IF EXISTS Employees, EmployeeUNI;
CREATE TABLE
IF
  NOT EXISTS Employees ( id int, name varchar ( 20 ) );
CREATE TABLE
IF
  NOT EXISTS EmployeeUNI ( id int, unique_id int, UNIQUE ( id ) 
  );
TRUNCATE TABLE Employees;
TRUNCATE TABLE EmployeeUNI;
INSERT INTO Employees ( id, name )
VALUES
  ( '1', 'Alice' ),
  ( '7', 'Bob' ),
  ( '11', 'Meir' ),
  ( '90', 'Winston' ),
  ( '3', 'Jonathan' );
INSERT INTO EmployeeUNI ( id, unique_id )
VALUES
  ( '3', '1' ),
  ( '11', '2' ),
  ( '90', '3' );
/*------------------------------------------------------------------ */
select
  t2.unique_id,
  t1.name 
from
  Employees as t1
  left join EmployeeUNI as t2 on t1.id = t2.id;