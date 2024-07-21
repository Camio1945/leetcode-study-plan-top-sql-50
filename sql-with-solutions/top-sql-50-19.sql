# https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find each query_name, the quality and poor_query_percentage.Both quality and poor_query_percentage should be rounded to 2 decimal places.
# 
DROP TABLE
IF
  EXISTS Queries;
CREATE TABLE Queries ( query_name VARCHAR ( 30 ), result VARCHAR ( 50 ), position INT, rating INT );
INSERT INTO Queries ( query_name, result, position, rating )
VALUES
  ( 'Dog', 'Golden Retriever', 1, 5 ),
  ( 'Dog', 'German Shepherd', 2, 5 ),
  ( 'Dog', 'Mule', 200, 1 ),
  ( 'Cat', 'Shirazi', 5, 2 ),
  ( 'Cat', 'Siamese', 3, 3 ),
  ( 'Cat', 'Sphynx', 7, 4 );
/*------------------------------------------------------------------ */
select
  q.query_name,
  round( avg( q.rating / q.position ), 2 ) as quality,
  round( avg( if ( q.rating < 3, 100, 0 )), 2 ) as poor_query_percentage 
from
  Queries as q 
where
  q.query_name is not null 
group by
  q.query_name;