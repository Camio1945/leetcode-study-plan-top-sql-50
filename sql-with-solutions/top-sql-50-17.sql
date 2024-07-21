# https://leetcode.com/problems/project-employees-i/description/?envType=study-plan-v2&envId=top-sql-50
# Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.
# 
DROP TABLE
IF
  EXISTS Project;
DROP TABLE
IF
  EXISTS Employee;
CREATE TABLE
IF
  NOT EXISTS Project ( project_id INT, employee_id INT );
CREATE TABLE
IF
  NOT EXISTS Employee ( employee_id INT, name VARCHAR ( 10 ), experience_years INT );
TRUNCATE TABLE Project;
INSERT INTO Project ( project_id, employee_id )
VALUES
  ( 1, 1 ),
  ( 1, 2 ),
  ( 1, 3 ),
  ( 2, 1 ),
  ( 2, 4 );
TRUNCATE TABLE Employee;
INSERT INTO Employee ( employee_id, name, experience_years )
VALUES
  ( 1, 'Khaled', 3 ),
  ( 2, 'Ali', 2 ),
  ( 3, 'John', 1 ),
  ( 4, 'Doe', 2 );
/*------------------------------------------------------------------ */
select
  p.project_id,
  round( avg( e.experience_years ), 2 ) as average_years 
from
  Project as p,
  Employee as e 
where
  p.employee_id = e.employee_id 
group by
  p.project_id;