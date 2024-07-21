# https://leetcode.com/problems/fix-names-in-a-table/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.
# Return the result table ordered by user_id.

DROP TABLE
IF
  EXISTS Users;
CREATE TABLE Users ( user_id INT, name VARCHAR ( 40 ) );
TRUNCATE TABLE Users;
INSERT INTO Users ( user_id, name )
VALUES
  ( '1', 'aLice' ),
  ( '2', 'bOB' );
/*------------------------------------------------------------------ */
select
  t.user_id,
  concat(
    upper(
    substring( t.name, 1, 1 )),
    lower(
    substring( t.name, 2, length( t.name ) - 1 ))) as name 
from
  Users as t 
order by
  t.user_id asc;