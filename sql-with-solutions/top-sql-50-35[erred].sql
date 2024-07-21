# https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/?envType=study-plan-v2&envId=top-sql-50
# There is a queue of people waiting to board a bus. However, the bus has a weight limit of 1000 kilograms, so there may be some people who cannot board.
#
DROP TABLE
IF
  EXISTS Queue;
CREATE TABLE Queue ( person_id INT, person_name VARCHAR ( 30 ), weight INT, turn INT );
INSERT INTO Queue ( person_id, person_name, weight, turn )
VALUES
  ( '5', 'Alice', '250', '1' ),
  ( '4', 'Bob', '175', '5' ),
  ( '3', 'Alex', '350', '2' ),
  ( '6', 'John Cena', '400', '3' ),
  ( '1', 'Winston', '500', '6' ),
  ( '2', 'Marie', '200', '4' );
/*------------------------------------------------------------------ */
/** Kudos to https://leetcode.com/problems/last-person-to-fit-in-the-bus/solutions/4828266/sql-solution-beats-100-easy-to-understand */
select
  person_name 
from
  ( select person_name, turn, sum( weight ) over ( order by turn ) as sum_weight from queue ) p1 
where
  sum_weight <= 1000 
order by
  turn desc 
  limit 1;