# https://leetcode.com/problems/employees-whose-manager-left-the-company/description/?envType=study-plan-v2&envId=top-sql-50
# Find the IDs of the employees whose salary is strictly less than $30000 and whose manager left the company. When a manager leaves the company, their information is deleted from the Employees table, but the reports still have their manager_id set to the manager that left.
# Return the result table ordered by employee_id.
DROP TABLE
IF
  EXISTS Employees;
CREATE TABLE Employees ( employee_id INT, name VARCHAR ( 20 ), manager_id INT, salary INT );
TRUNCATE TABLE Employees;
INSERT INTO Employees ( employee_id, name, manager_id, salary )
VALUES
  ( '3', 'Mila', '9', '60301' ),
  ( '12', 'Antonella', NULL, '31000' ),
  ( '13', 'Emery', NULL, '67084' ),
  ( '1', 'Kalel', '11', '21241' ),
  ( '9', 'Mikaela', NULL, '50937' ),
  ( '11', 'Joziah', '6', '28485' );
/*------------------------------------------------------------------ */



