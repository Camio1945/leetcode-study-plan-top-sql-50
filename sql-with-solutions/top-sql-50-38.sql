# https://leetcode.com/problems/exchange-seats/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.
# Return the result table ordered by id in ascending order.
DROP TABLE
IF
  EXISTS Seat;
CREATE TABLE Seat (
  id INT,
student VARCHAR ( 255 ));
TRUNCATE TABLE Seat;
INSERT INTO Seat ( id, student )
VALUES
  ( 1, 'Abbot' ),
  ( 2, 'Doris' ),
  ( 3, 'Emerson' ),
  ( 4, 'Green' ),
  ( 5, 'Jeames' );
/*------------------------------------------------------------------ */
select
  a.id,
  ifnull( b.student, a.student ) as student 
from
  Seat a
  left join (
  select
    t.id,
    t.student,
  if
    (
      sum( 1 ) over ( order by t.id ) % 2 = 1,
      t.id + 1,
      t.id - 1 
    ) as new_id 
  from
    Seat as t 
  ) as b on a.id = b.new_id 
order by
  a.id asc;