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
select
  t3.product_id,
  t3.new_price as price 
from
  Products as t3,
  (
  select
    t1.product_id,
    max( t1.change_date ) as change_date 
  from
    Products as t1 
  where
    t1.change_date <= '2019-08-16' 
  group by
    t1.product_id 
  ) as a 
where
  t3.product_id = a.product_id 
  and t3.change_date = a.change_date union all
select
  t2.product_id,
  10 as price 
from
  Products as t2 
where
  t2.change_date > '2019-08-16' 
  and t2.product_id not in ( select product_id from Products where change_date <= '2019-08-16' ) 
group by
  t2.product_id;