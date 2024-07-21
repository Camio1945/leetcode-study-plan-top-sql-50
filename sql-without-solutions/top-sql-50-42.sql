# https://leetcode.com/problems/investments-in-2016/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to report the sum of all total investment values in 2016 tiv_2016, for all policyholders who:
# have the same tiv_2015 value as one or more other policyholders, and are not located in the same city as any other policyholder (i.e., the (lat, lon) attribute pairs must be unique).
# Round tiv_2016 to two decimal places.
#
DROP TABLE
IF
  EXISTS Insurance;
CREATE TABLE
IF
  NOT EXISTS Insurance ( pid int, tiv_2015 float, tiv_2016 float, lat float, lon float );
INSERT INTO Insurance ( pid, tiv_2015, tiv_2016, lat, lon )
VALUES
  ( '1', 10, 5, 10, 10 ),
  ( '2', 20, 20, 20, 20 ),
  ( '3', 10, 30, 20, 20 ),
  ( '4', 10, 40, 40, 40 );
/*------------------------------------------------------------------ */



