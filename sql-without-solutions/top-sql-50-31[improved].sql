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



