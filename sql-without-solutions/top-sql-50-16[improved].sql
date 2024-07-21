# https://leetcode.com/problems/average-selling-price/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places.
# 
DROP TABLE
IF
  EXISTS Prices;
CREATE TABLE Prices ( product_id INT, start_date DATE, end_date DATE, price INT );
DROP TABLE
IF
  EXISTS UnitsSold;
CREATE TABLE UnitsSold ( product_id INT, purchase_date DATE, units INT );
INSERT INTO Prices ( product_id, start_date, end_date, price )
VALUES
  ( 1, '2019-02-17', '2019-02-28', 5 ),
  ( 1, '2019-03-01', '2019-03-22', 20 ),
  ( 2, '2019-02-01', '2019-02-20', 15 ),
  ( 2, '2019-02-21', '2019-03-31', 30 );
INSERT INTO UnitsSold ( product_id, purchase_date, units )
VALUES
  ( 1, '2019-02-25', 100 ),
  ( 1, '2019-03-01', 15 ),
  ( 2, '2019-02-10', 200 ),
  ( 2, '2019-03-22', 30 );
/*------------------------------------------------------------------ */



