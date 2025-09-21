/* Write your T-SQL query statement below */

SELECT patient_id, patient_name, conditions
FROM Patients
WHERE  left(conditions,5)='DIAB1' or conditions LIKE '% DIAB1%';
