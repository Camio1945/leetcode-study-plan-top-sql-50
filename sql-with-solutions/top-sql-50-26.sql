# https://leetcode.com/problems/classes-more-than-5-students/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find all the classes that have at least five students.
#
DROP TABLE
IF
  EXISTS Courses;
CREATE TABLE Courses ( student VARCHAR ( 255 ), class VARCHAR ( 255 ) );
TRUNCATE TABLE Courses;
INSERT INTO Courses ( student, class )
VALUES
  ( 'A', 'Math' ),
  ( 'B', 'English' ),
  ( 'C', 'Math' ),
  ( 'D', 'Biology' ),
  ( 'E', 'Math' ),
  ( 'F', 'Computer' ),
  ( 'G', 'Math' ),
  ( 'H', 'Math' ),
  ( 'I', 'Math' );
/*------------------------------------------------------------------ */
select
  t.class 
from
  Courses as t 
group by
  t.class 
having
  count(*) >= 5;