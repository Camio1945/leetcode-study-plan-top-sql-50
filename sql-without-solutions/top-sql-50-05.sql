# https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
# 
DROP TABLE IF EXISTS Tweets;
CREATE TABLE
IF
  NOT EXISTS Tweets ( tweet_id INT, content VARCHAR ( 50 ) );
TRUNCATE TABLE Tweets;
INSERT INTO Tweets ( tweet_id, content )
VALUES
  ( 1, 'Vote for Biden' ),
  ( 2, 'Let us make America great again!' );
/*------------------------------------------------------------------ */



