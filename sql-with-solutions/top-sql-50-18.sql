# https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the percentage of the users registered in each contest rounded to two decimals.
# Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.
DROP TABLE
IF
  EXISTS Users;
CREATE TABLE Users (
  user_id INT,
user_name VARCHAR ( 20 ));
INSERT INTO Users ( user_id, user_name )
VALUES
  ( 6, 'Alice' ),
  ( 2, 'Bob' ),
  ( 7, 'Alex' );
DROP TABLE
IF
  EXISTS Register;
CREATE TABLE Register ( contest_id INT, user_id INT );
INSERT INTO Register ( contest_id, user_id )
VALUES
  ( 215, 6 ),
  ( 209, 2 ),
  ( 208, 2 ),
  ( 210, 6 ),
  ( 208, 6 ),
  ( 209, 7 ),
  ( 209, 6 ),
  ( 215, 7 ),
  ( 208, 7 ),
  ( 210, 2 ),
  ( 207, 2 ),
  ( 210, 7 );
/*------------------------------------------------------------------ */
select
  r.contest_id,
  round(( count(*)* 100 / ( select count(*) from Users ) ), 2 ) as percentage 
from
  Register as r 
group by
  r.contest_id 
order by
  percentage desc,
  r.contest_id asc;