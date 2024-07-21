# https://leetcode.com/problems/delete-duplicate-emails/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.
# 

DROP TABLE
IF
  EXISTS Person;
CREATE TABLE
IF
  NOT EXISTS Person ( Id INT, Email VARCHAR ( 255 ) );
TRUNCATE TABLE Person;
INSERT INTO Person ( Id, Email )
VALUES
  ( '1', 'john@example.com' ),
  ( '2', 'bob@example.com' ),
  ( '3', 'john@example.com' );
/*------------------------------------------------------------------ */
/** note: There has to be two levels in the "Id not in ..." part */
delete 
from
  Person 
where
  Id not in ( select a.Id from ( select min( Id ) as Id from Person group by Email ) as a );