# https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. In other words, you need to count the number of players that logged in for at least two consecutive days starting from their first login date, then divide that number by the total number of players.
#
DROP TABLE
IF
  EXISTS Activity;
CREATE TABLE Activity ( player_id INT, device_id INT, event_date DATE, games_played INT );
INSERT INTO Activity ( player_id, device_id, event_date, games_played )
VALUES
  ( 1, 2, '2016-03-01', 5 ),
  ( 1, 2, '2016-03-02', 6 ),
  ( 2, 3, '2017-06-25', 1 ),
  ( 3, 1, '2016-03-02', 0 ),
  ( 3, 4, '2018-07-03', 5 );
/*------------------------------------------------------------------ */
/** kudos to https://leetcode.com/problems/game-play-analysis-iv/solutions/3673167/best-optimum-solution-with-explanation */
select
  round( count( distinct t1.player_id )/( select count( distinct t3.player_id ) from Activity as t3 ), 2 ) as fraction 
from
  Activity t1 
where
  (
  t1.player_id,
  date_sub( t1.event_date, interval 1 day )) in ( select t2.player_id, min( t2.event_date ) as first_login_date from Activity as t2 group by t2.player_id );