# https://leetcode.com/problems/customers-who-bought-all-products/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to report the customer ids from the Customer table that bought all the products in the Product table.
#
DROP TABLE
IF
  EXISTS Customer;
DROP TABLE
IF
  EXISTS Product;
CREATE TABLE Customer ( customer_id INT, product_key INT );
CREATE TABLE Product ( product_key INT );
INSERT INTO Customer ( customer_id, product_key )
VALUES
  ( 1, 5 ),
  ( 2, 6 ),
  ( 3, 5 ),
  ( 3, 6 ),
  ( 1, 6 );
INSERT INTO Product ( product_key )
VALUES
  ( 5 ),
  ( 6 );
/*------------------------------------------------------------------ */
select
  a.customer_id 
from
  ( select distinct c.customer_id, c.product_key from Customer as c ) as a 
group by
  a.customer_id 
having
  count(*) = ( select count(*) from Product );