# https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.
#
DROP TABLE
IF
  EXISTS Delivery;
CREATE TABLE Delivery ( delivery_id INT, customer_id INT, order_date DATE, customer_pref_delivery_date DATE );
TRUNCATE TABLE Delivery;
INSERT INTO Delivery ( delivery_id, customer_id, order_date, customer_pref_delivery_date )
VALUES
  ( 1, 1, '2019-08-01', '2019-08-02' ),
  ( 2, 2, '2019-08-02', '2019-08-02' ),
  ( 3, 1, '2019-08-11', '2019-08-12' ),
  ( 4, 3, '2019-08-24', '2019-08-24' ),
  ( 5, 3, '2019-08-21', '2019-08-22' ),
  ( 6, 2, '2019-08-11', '2019-08-13' ),
  ( 7, 4, '2019-08-09', '2019-08-09' );
/*------------------------------------------------------------------ */



