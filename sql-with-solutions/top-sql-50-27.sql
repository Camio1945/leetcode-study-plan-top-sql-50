# https://leetcode.com/problems/find-followers-count/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution that will, for each user, return the number of followers.
# Return the result table ordered by user_id in ascending order.
DROP TABLE
IF
  EXISTS Followers;
CREATE TABLE Followers ( user_id INT, follower_id INT );
INSERT INTO Followers ( user_id, follower_id )
VALUES
  ( 0, 1 ),
  ( 1, 0 ),
  ( 2, 0 ),
  ( 2, 1 );
/*------------------------------------------------------------------ */
select
  t.user_id,
  count(*) as followers_count 
from
  Followers as t 
group by
  t.user_id 
order by
  t.user_id asc;