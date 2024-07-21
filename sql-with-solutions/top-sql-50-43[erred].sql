# https://leetcode.com/problems/department-top-three-salaries/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the employees who are high earners in each of the departments.
# 

DROP TABLE
IF
  EXISTS Employee,
  Department;
CREATE TABLE
IF
  NOT EXISTS Department ( id int NOT NULL AUTO_INCREMENT PRIMARY KEY, name varchar ( 255 ) NOT NULL );
CREATE TABLE
IF
  NOT EXISTS Employee (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar ( 255 ) NOT NULL,
    salary int NOT NULL,
    departmentId int NOT NULL,
    FOREIGN KEY ( departmentId ) REFERENCES Department ( id ) 
  );
INSERT INTO Department ( id, name )
VALUES
  ( '1', 'IT' ),
  ( '2', 'Sales' );
INSERT INTO Employee ( id, name, salary, departmentId )
VALUES
  ( '1', 'Joe', '85000', '1' ),
  ( '2', 'Henry', '80000', '2' ),
  ( '3', 'Sam', '60000', '2' ),
  ( '4', 'Max', '90000', '1' ),
  ( '5', 'Janet', '69000', '1' ),
  ( '6', 'Randy', '85000', '1' ),
  ( '7', 'Will', '70000', '1' );
/*------------------------------------------------------------------ */
select
  d.name as Department,
  e.name as Employee,
  e.salary as Salary 
from
  Employee e,
  Department as d 
where
  e.departmentId = d.id 
  and ( select COUNT( distinct salary ) from Employee as ie where ie.departmentId = e.departmentId and ie.salary >= e.salary ) <= 3 
order by
  e.departmentId,
  e.salary desc;