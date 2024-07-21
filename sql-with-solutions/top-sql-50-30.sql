# https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.
# Return the result table ordered by employee_id.
DROP TABLE
IF
  EXISTS Employees;
CREATE TABLE Employees ( employee_id INT, name VARCHAR ( 20 ), reports_to VARCHAR ( 20 ), 
age INT );
INSERT INTO Employees ( employee_id, name, reports_to, age )
VALUES
  ( 9, 'Hercy', 'None', 43 ),
  ( 6, 'Alice', '9', 41 ),
  ( 4, 'Bob', '9', 36 ),
  ( 2, 'Winston', 'None', 37 );
/*------------------------------------------------------------------ */
select
  t2.employee_id,
  t2.name,
  count(*) as reports_count,
  round( avg( t1.age ), 0 ) as average_age 
from
  Employees as t1,
  Employees t2 
where
  t1.reports_to = t2.employee_id 
group by
  t2.employee_id,
  t2.name 
order by
  t2.employee_id asc;