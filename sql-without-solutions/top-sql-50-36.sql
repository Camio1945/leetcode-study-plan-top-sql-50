/* https://leetcode.com/problems/count-salary-categories/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to calculate the number of bank accounts for each salary category. The salary categories are:
# "Low Salary": All the salaries strictly less than $20000.
# "Average Salary": All the salaries in the inclusive range [$20000, $50000].
# "High Salary": All the salaries strictly greater than $50000.
# The result table must contain all three categories. If there are no accounts in a category, return 0.
*/ 
DROP TABLE
IF
  EXISTS Accounts;
CREATE TABLE Accounts ( account_id INT, income INT );
TRUNCATE TABLE Accounts;
INSERT INTO Accounts ( account_id, income )
VALUES
  ( '3', '108939' ),
  ( '2', '12747' ),
  ( '8', '87709' ),
  ( '6', '91796' );
/*------------------------------------------------------------------ */



