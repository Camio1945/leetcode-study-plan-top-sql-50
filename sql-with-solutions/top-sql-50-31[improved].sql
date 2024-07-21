# https://leetcode.com/problems/primary-department-for-each-employee/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to report all the employees with their primary department. For employees who belong to one department, report their only department.
#
DROP TABLE
IF
  EXISTS Employee;
CREATE TABLE
IF
  NOT EXISTS Employee ( employee_id INT, department_id INT, primary_flag ENUM ( 'Y', 'N' ) );
TRUNCATE TABLE Employee;
INSERT INTO Employee ( employee_id, department_id, primary_flag )
VALUES
  ( 1, 1, 'N' ),
  ( 2, 1, 'Y' ),
  ( 2, 2, 'N' ),
  ( 3, 3, 'N' ),
  ( 4, 2, 'N' ),
  ( 4, 3, 'Y' ),
  ( 4, 4, 'N' );
/*------------------------------------------------------------------ */
/** Kudos to https://leetcode.com/problems/primary-department-for-each-employee/solutions/5129746/sql-100-easy-fast-clean-solution */
select
  t.employee_id,
  t.department_id 
from
  Employee as t 
where
  t.primary_flag = 'Y' 
  or t.employee_id in (
  select
    t2.employee_id 
  from
    Employee as t2 
  group by
    t2.employee_id 
  having
  count(*)= 1 
  );