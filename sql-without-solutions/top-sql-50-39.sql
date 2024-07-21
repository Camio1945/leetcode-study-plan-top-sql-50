# https://leetcode.com/problems/movie-rating/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to:
# Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
# Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.
#
DROP TABLE
IF
  EXISTS Movies;
DROP TABLE
IF
  EXISTS Users;
DROP TABLE
IF
  EXISTS MovieRating;
CREATE TABLE
IF
  NOT EXISTS Movies ( movie_id INT, title VARCHAR ( 30 ) );
CREATE TABLE
IF
  NOT EXISTS Users ( user_id INT, name VARCHAR ( 30 ) );
CREATE TABLE
IF
  NOT EXISTS MovieRating ( movie_id INT, user_id INT, rating INT, created_at DATE );
TRUNCATE TABLE Movies;
INSERT INTO Movies ( movie_id, title )
VALUES
  ( 1, 'Avengers' ),
  ( 2, 'Frozen 2' ),
  ( 3, 'Joker' );
TRUNCATE TABLE Users;
INSERT INTO Users ( user_id, name )
VALUES
  ( 1, 'Daniel' ),
  ( 2, 'Monica' ),
  ( 3, 'Maria' ),
  ( 4, 'James' );
TRUNCATE TABLE MovieRating;
INSERT INTO MovieRating ( movie_id, user_id, rating, created_at )
VALUES
  ( 1, 1, 3, '2020-01-12' ),
  ( 1, 2, 4, '2020-02-11' ),
  ( 1, 3, 2, '2020-02-12' ),
  ( 1, 4, 1, '2020-01-01' ),
  ( 2, 1, 5, '2020-02-17' ),
  ( 2, 2, 2, '2020-02-01' ),
  ( 2, 3, 2, '2020-03-01' ),
  ( 3, 1, 3, '2020-02-22' ),
  ( 3, 2, 4, '2020-02-25' );
/*------------------------------------------------------------------ */



