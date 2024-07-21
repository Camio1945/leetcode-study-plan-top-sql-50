# https://leetcode.com/problems/product-price-at-a-given-date/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the prices of all products on 2019-08-16. Assume the price of all products before any change is 10.
#
DROP TABLE
IF
  EXISTS Products;
CREATE TABLE
IF
  NOT EXISTS Products ( product_id INT, new_price INT, change_date DATE );
INSERT INTO Products ( product_id, new_price, change_date )
VALUES
  ( 1, 20, '2019-08-14' ),
  ( 2, 50, '2019-08-14' ),
  ( 1, 30, '2019-08-15' ),
  ( 1, 35, '2019-08-16' ),
  ( 2, 65, '2019-08-17' ),
  ( 3, 20, '2019-08-18' );
/*------------------------------------------------------------------ */



