# https://leetcode.com/problems/patients-with-a-condition/description/?envType=study-plan-v2&envId=top-sql-50
# Write a solution to find the patient_id, patient_name, and conditions of the patients who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix.
#
DROP TABLE
IF
  EXISTS Patients;
CREATE TABLE
IF
  NOT EXISTS Patients ( patient_id INT, patient_name VARCHAR ( 30 ), conditions VARCHAR ( 100 ) );
INSERT INTO Patients ( patient_id, patient_name, conditions )
VALUES
  ( '1', 'Daniel', 'YFEV COUGH' ),
  ( '2', 'Alice', '' ),
  ( '3', 'Bob', 'DIAB100 MYOP' ),
  ( '4', 'George', 'ACNE DIAB100' ),
  ( '5', 'Alain', 'DIAB201' );
/*------------------------------------------------------------------ */
select
  patient_id,
  patient_name,
  conditions 
from
  Patients as t 
where
  t.conditions like 'DIAB1%' 
  or t.conditions like '% DIAB1%'; 