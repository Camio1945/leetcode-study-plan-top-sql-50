# https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. A user was active on someday if they made at least one activity on that day.
#
DROP TABLE
IF
  EXISTS Activity;
CREATE TABLE Activity ( user_id INT, session_id INT, activity_date DATE, activity_type ENUM ( 'open_session', 'end_session', 'scroll_down', 'send_message' ) );
TRUNCATE TABLE Activity;
INSERT INTO Activity ( user_id, session_id, activity_date, activity_type )
VALUES
  ( 1, 1, '2019-07-20', 'open_session' ),
  ( 1, 1, '2019-07-20', 'scroll_down' ),
  ( 1, 1, '2019-07-20', 'end_session' ),
  ( 2, 4, '2019-07-20', 'open_session' ),
  ( 2, 4, '2019-07-21', 'send_message' ),
  ( 2, 4, '2019-07-21', 'end_session' ),
  ( 3, 2, '2019-07-21', 'open_session' ),
  ( 3, 2, '2019-07-21', 'send_message' ),
  ( 3, 2, '2019-07-21', 'end_session' ),
  ( 4, 3, '2019-06-25', 'open_session' ),
  ( 4, 3, '2019-06-25', 'end_session' );
/*------------------------------------------------------------------ */
select
  t.activity_date as day,
  count( distinct t.user_id ) as active_users 
from
  Activity as t 
where
  t.activity_date > date_sub( '2019-07-27', interval 30 day ) 
  and t.activity_date <= '2019-07-27' 
group by
  t.activity_date;
