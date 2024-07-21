# https://leetcode.com/problems/monthly-transactions-i/?envType=study-plan-v2&envId=top-sql-50
# Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.
# 
DROP TABLE
IF
  EXISTS Transactions;
CREATE TABLE Transactions ( id INT, country VARCHAR ( 4 ), state ENUM ( 'approved', 'declined' ), amount INT, trans_date DATE );
INSERT INTO Transactions ( id, country, state, amount, trans_date )
VALUES
  ( 121, 'US', 'approved', 1000, '2018-12-18' ),
  ( 122, 'US', 'declined', 2000, '2018-12-19' ),
  ( 123, 'US', 'approved', 2000, '2019-01-01' ),
  ( 124, 'DE', 'approved', 2000, '2019-01-07' );
/*------------------------------------------------------------------ */



