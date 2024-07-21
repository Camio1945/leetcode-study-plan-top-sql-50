# https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
# 
DROP TABLE IF EXISTS Sales, Product;
CREATE TABLE
IF
  NOT EXISTS Sales ( sale_id INT, product_id INT, year INT, quantity INT, price INT );
CREATE TABLE
IF
  NOT EXISTS Product ( product_id INT, product_name VARCHAR ( 10 ) );
TRUNCATE TABLE Sales;
TRUNCATE TABLE Product;
INSERT INTO Sales ( sale_id, product_id, year, quantity, price )
VALUES
  ( '1', 100, 2008, 10, 5000 ),
  ( '2', 100, 2009, 12, 5000 ),
  ( '7', 200, 2011, 15, 9000 );
INSERT INTO Product ( product_id, product_name )
VALUES
  ( 100, 'Nokia' ),
  ( 200, 'Apple' ),
  ( 300, 'Samsung' );
/*------------------------------------------------------------------ */
select
  p.product_name,
  s.`year`,
  s.price 
from
  Sales as s,
  Product as p 
where
  s.product_id = p.product_id;