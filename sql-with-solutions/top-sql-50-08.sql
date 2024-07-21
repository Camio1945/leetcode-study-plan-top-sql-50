# https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
# 
DROP TABLE IF EXISTS Visits, Transactions;
CREATE TABLE
IF
  NOT EXISTS Visits ( visit_id INT, customer_id INT );
CREATE TABLE
IF
  NOT EXISTS Transactions ( transaction_id INT, visit_id INT, amount INT );
TRUNCATE TABLE Visits;
INSERT INTO Visits ( visit_id, customer_id )
VALUES
  ( 1, 23 ),
  ( 2, 9 ),
  ( 4, 30 ),
  ( 5, 54 ),
  ( 6, 96 ),
  ( 7, 54 ),
  ( 8, 54 );
TRUNCATE TABLE Transactions;
INSERT INTO Transactions ( transaction_id, visit_id, amount )
VALUES
  ( 2, 5, 310 ),
  ( 3, 5, 300 ),
  ( 9, 5, 200 ),
  ( 12, 1, 910 ),
  ( 13, 2, 970 );
/*------------------------------------------------------------------ */
select
  t1.customer_id,
  count(*) as count_no_trans 
from
  Visits as t1 
where
  t1.visit_id not in ( select t2.visit_id from Transactions as t2 ) 
group by
  t1.customer_id;