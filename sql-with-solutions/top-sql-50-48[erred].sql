# https://leetcode.com/problems/group-sold-products-by-the-date/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find for each date the number of different products sold and their names.
# 
DROP TABLE
IF
  EXISTS Activities;
CREATE TABLE
IF
  NOT EXISTS Activities ( sell_date DATE, product VARCHAR ( 20 ) );
TRUNCATE TABLE Activities;
INSERT INTO Activities ( sell_date, product )
VALUES
  ( '2020-05-30', 'Headphone' ),
  ( '2020-06-01', 'Pencil' ),
  ( '2020-06-02', 'Mask' ),
  ( '2020-05-30', 'Basketball' ),
  ( '2020-06-01', 'Bible' ),
  ( '2020-06-02', 'Mask' ),
  ( '2020-05-30', 'T-Shirt' );
/*------------------------------------------------------------------ */
/** I forgot the group_concat function */
select
  t.sell_date,
  count( distinct t.product ) as num_sold,
  group_concat( distinct t.product ) as products 
from
  Activities as t 
group by
  t.sell_date 
order by
  t.sell_date asc;