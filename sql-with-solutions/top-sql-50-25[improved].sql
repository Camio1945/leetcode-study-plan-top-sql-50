# https://leetcode.com/problems/product-sales-analysis-iii/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to select the product id, year, quantity, and price for the first year of every product sold.
#
DROP TABLE
IF
  EXISTS Sales;
CREATE TABLE
IF
  NOT EXISTS Sales ( sale_id INT, product_id INT, year INT, quantity INT, price INT );
INSERT INTO Sales ( sale_id, product_id, year, quantity, price )
VALUES
  ( 1, 100, 2008, 10, 5000 ),
  ( 2, 100, 2009, 12, 5000 ),
  ( 7, 200, 2011, 15, 9000 );
DROP TABLE
IF
  EXISTS Product;
CREATE TABLE
IF
  NOT EXISTS Product ( product_id INT, product_name VARCHAR ( 10 ) );
INSERT INTO Product ( product_id, product_name )
VALUES
  ( 100, 'Nokia' ),
  ( 200, 'Apple' ),
  ( 300, 'Samsung' );
/*------------------------------------------------------------------ */
select
  s.product_id,
  s.year as first_year,
  s.quantity,
  s.price 
from
  Sales as s 
where
  ( s.product_id, year ) in (
  select
    t.product_id,
    min( t.year ) 
  from
    Sales as t 
  group by
  t.product_id 
  );