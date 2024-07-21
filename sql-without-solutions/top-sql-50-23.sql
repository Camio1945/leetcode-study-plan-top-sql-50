# https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to calculate the number of unique subjects each teacher teaches in the university. 
#
DROP TABLE
IF
  EXISTS Teacher;
CREATE TABLE Teacher ( teacher_id INT, subject_id INT, dept_id INT );
INSERT INTO Teacher ( teacher_id, subject_id, dept_id )
VALUES
  ( 1, 2, 3 ),
  ( 1, 2, 4 ),
  ( 1, 3, 3 ),
  ( 2, 1, 1 ),
  ( 2, 2, 1 ),
  ( 2, 3, 1 ),
  ( 2, 4, 1 );
/*------------------------------------------------------------------ */



