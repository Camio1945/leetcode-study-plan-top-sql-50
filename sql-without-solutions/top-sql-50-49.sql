# https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to get the names of products that have at least 100 units ordered in February 2020 and their amount.
# 

DROP TABLE
IF
  EXISTS Products;
DROP TABLE
IF
  EXISTS Orders;
CREATE TABLE
IF
  NOT EXISTS Products ( product_id INT, product_name VARCHAR ( 40 ), product_category VARCHAR ( 40 ) );
CREATE TABLE
IF
  NOT EXISTS Orders ( product_id INT, order_date DATE, unit INT );
TRUNCATE TABLE Products;
TRUNCATE TABLE Orders;
INSERT INTO Products ( product_id, product_name, product_category )
VALUES
  ( '1', 'Leetcode Solutions', 'Book' ),
  ( '2', 'Jewels of Stringology', 'Book' ),
  ( '3', 'HP', 'Laptop' ),
  ( '4', 'Lenovo', 'Laptop' ),
  ( '5', 'Leetcode Kit', 'T-shirt' );
INSERT INTO Orders ( product_id, order_date, unit )
VALUES
  ( '1', '2020-02-05', '60' ),
  ( '1', '2020-02-10', '70' ),
  ( '2', '2020-01-18', '30' ),
  ( '2', '2020-02-11', '80' ),
  ( '3', '2020-02-17', '2' ),
  ( '3', '2020-02-24', '3' ),
  ( '4', '2020-03-01', '20' ),
  ( '4', '2020-03-04', '30' ),
  ( '4', '2020-03-04', '60' ),
  ( '5', '2020-02-25', '50' ),
  ( '5', '2020-02-27', '50' ),
  ( '5', '2020-03-01', '50' );
/*------------------------------------------------------------------ */



