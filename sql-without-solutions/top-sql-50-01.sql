# https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50
DROP TABLE IF EXISTS Products;
CREATE TABLE
IF
  NOT EXISTS Products ( product_id INT, low_fats ENUM ( 'Y', 'N' ), recyclable ENUM ( 'Y', 'N' ) );
TRUNCATE TABLE Products;
INSERT INTO Products ( product_id, low_fats, recyclable )
VALUES
  ( 0, 'Y', 'N' ),
  ( 1, 'Y', 'Y' ),
  ( 2, 'N', 'Y' ),
  ( 3, 'Y', 'Y' ),
  ( 4, 'N', 'N' );
/*------------------------------------------------------------------ */



