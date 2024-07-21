# https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the number of times each student attended each exam.
# Return the result table ordered by student_id and subject_name.
DROP TABLE IF EXISTS Students, Subjects;
CREATE TABLE
IF
  NOT EXISTS Students ( student_id INT, student_name VARCHAR ( 20 ) );
CREATE TABLE
IF
  NOT EXISTS Subjects ( subject_name VARCHAR ( 20 ) );
CREATE TABLE
IF
  NOT EXISTS Examinations ( student_id INT, subject_name VARCHAR ( 20 ) );
TRUNCATE TABLE Students;
INSERT INTO Students ( student_id, student_name )
VALUES
  ( 1, 'Alice' ),
  ( 2, 'Bob' ),
  ( 13, 'John' ),
  ( 6, 'Alex' );
TRUNCATE TABLE Subjects;
INSERT INTO Subjects ( subject_name )
VALUES
  ( 'Math' ),
  ( 'Physics' ),
  ( 'Programming' );
TRUNCATE TABLE Examinations;
INSERT INTO Examinations ( student_id, subject_name )
VALUES
  ( 1, 'Math' ),
  ( 1, 'Physics' ),
  ( 1, 'Programming' ),
  ( 2, 'Programming' ),
  ( 1, 'Physics' ),
  ( 1, 'Math' ),
  ( 13, 'Math' ),
  ( 13, 'Programming' ),
  ( 13, 'Physics' ),
  ( 2, 'Math' ),
  ( 1, 'Math' );
/*------------------------------------------------------------------ */
/** Students,Subjects,Examinations */
select
  t1.student_id,
  t1.student_name,
  t2.subject_name,
  ( select count(*) from Examinations as t3 where t3.student_id = t1.student_id and t3.subject_name = t2.subject_name ) as attended_exams 
from
  Students as t1
  left join Subjects as t2 on 1 = 1 
  where t2.subject_name is not null
order by
  t1.student_id,
  t2.subject_name;
  