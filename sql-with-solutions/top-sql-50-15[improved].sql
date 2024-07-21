# https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
# Return the result table ordered by rating in descending order.
DROP TABLE
IF
  EXISTS cinema;
CREATE TABLE cinema ( id INT, movie VARCHAR ( 255 ), description VARCHAR ( 255 ), rating FLOAT ( 2, 1 ) );
TRUNCATE TABLE cinema;
INSERT INTO cinema ( id, movie, description, rating )
VALUES
  ( 1, 'War', 'great 3D', 8.9 ),
  ( 2, 'Science', 'fiction', 8.5 ),
  ( 3, 'irish', 'boring', 6.2 ),
  ( 4, 'Ice song', 'Fantacy', 8.6 ),
  ( 5, 'House card', 'Interesting', 9.1 );
/*------------------------------------------------------------------ */
select
  t.id,
  t.movie,
  t.description,
  t.rating 
from
  cinema as t 
where
  mod(t.id, 2) = 1
  and t.description != 'boring' 
order by
  t.rating desc;