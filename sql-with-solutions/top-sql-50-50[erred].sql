# https://leetcode.com/problems/find-users-with-valid-e-mails/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the users who have valid emails.
# A valid e-mail has a prefix name and a domain where:
# The prefix name is a string that may contain letters (upper or lower case), digits, underscore '_', period '.', and/or dash '-'. The prefix name must start with a letter.
# The domain is '@leetcode.com'.
DROP TABLE
IF
  EXISTS Users;
CREATE TABLE Users ( user_id INT, name VARCHAR ( 30 ), mail VARCHAR ( 50 ) );
TRUNCATE TABLE Users;
INSERT INTO Users ( user_id, name, mail )
VALUES
  ( '1', 'Winston', 'winston@leetcode.com' ),
  ( '2', 'Jonathan', 'jonathanisgreat' ),
  ( '3', 'Annabelle', 'bella-@leetcode.com' ),
  ( '4', 'Sally', 'sally.come@leetcode.com' ),
  ( '5', 'Marwan', 'quarz#2020@leetcode.com' ),
  ( '6', 'David', 'david69@gmail.com' ),
  ( '7', 'Shapiro', '.shapo@leetcode.com' ),
  ( '8', 'Benjamin', 'Benjamin._2@leetcode.com' ),
  ( '8', 'Winston', 'winston@leetcode?com' )
  ;
/*------------------------------------------------------------------ */
/** First, I don't know the regexp keyword. 
    Second, I got the regular expression wrong a lot of times. */
select
  * 
from
  Users as t 
where
  t.mail regexp '^[a-zA-Z][-._a-zA-Z0-9]*@leetcode\\.com$';