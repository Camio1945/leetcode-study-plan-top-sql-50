# https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the people who have the most friends and the most friends number.
#
DROP TABLE
IF
  EXISTS RequestAccepted;
CREATE TABLE
IF
  NOT EXISTS RequestAccepted ( requester_id INT NOT NULL, accepter_id INT NULL, accept_date DATE NULL );
INSERT INTO RequestAccepted ( requester_id, accepter_id, accept_date )
VALUES
  ( '1', '2', '2016-06-03' ),
  ( '1', '3', '2016-06-08' ),
  ( '2', '3', '2016-06-08' ),
  ( '3', '4', '2016-06-09' );
/*------------------------------------------------------------------ */
select
  a.accepter_id as id,
  count(*) num 
from
  ( select t1.accepter_id from RequestAccepted as t1 union all select t2.requester_id as accepter_id from RequestAccepted as t2 ) as a 
group by
  a.accepter_id 
order by
  num desc 
  limit 1;