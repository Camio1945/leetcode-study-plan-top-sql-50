# https://leetcode.com/problems/restaurant-growth/description/?envType=study-plan-v2&envId=top-sql-50
# You are the restaurant owner and you want to analyze a possible expansion (there will be at least one customer every day).
# Compute the moving average of how much the customer paid in a seven days window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.
# Return the result table ordered by visited_on in ascending order.

DROP TABLE
IF
  EXISTS Customer;
CREATE TABLE Customer ( customer_id INT, name VARCHAR ( 20 ), visited_on DATE, amount INT );
TRUNCATE TABLE Customer;
INSERT INTO Customer ( customer_id, name, visited_on, amount )
VALUES
  ( '1', 'Jhon', '2019-01-01', '100' ),
  ( '2', 'Daniel', '2019-01-02', '110' ),
  ( '3', 'Jade', '2019-01-03', '120' ),
  ( '4', 'Khaled', '2019-01-04', '130' ),
  ( '5', 'Winston', '2019-01-05', '110' ),
  ( '6', 'Elvis', '2019-01-06', '140' ),
  ( '7', 'Anna', '2019-01-07', '150' ),
  ( '8', 'Maria', '2019-01-08', '80' ),
  ( '9', 'Jaze', '2019-01-09', '110' ),
  ( '1', 'Jhon', '2019-01-10', '130' ),
  ( '3', 'Jade', '2019-01-10', '150' );
/*------------------------------------------------------------------ */
select
  a.visited_on,
  a.amount,
  round( a.amount / 7, 2 ) as average_amount 
from
  (
  select
    t1.visited_on,
    (
    select
      sum( t2.amount ) 
    from
      Customer as t2 
    where
    t2.visited_on <= t1.visited_on and t2.visited_on >= date_sub( t1.visited_on, interval 6 day )) as amount 
  from
    Customer as t1 
  where
    t1.visited_on >= date_add(( select min( visited_on ) from Customer ), interval 6 day ) 
  group by
    t1.visited_on 
  ) as a 
order by
  a.visited_on asc;