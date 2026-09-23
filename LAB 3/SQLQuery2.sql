--Display all the details of first five students from STUDENT table. 

SELECT TOP 5 * FROM STUDENT

--20. Display all the details of first three students whose SPI is greater than 8.0. 

SELECT TOP 3 * FROM STUDENT WHERE SPI > 8.0

--21. Display Student ID, Name of first five students whose branch does not belong to ‘COMPUTER’ branch. 

SELECT TOP 5 * FROM STUDENT WHERE BRANCH != 'COMPUTER'

--22. Select all details with student IDs not in the range 105 to 109. 

SELECT * FROM STUDENT WHERE STDID BETWEEN 105 AND 109

--Select all records from STUDENT where SPI is greater than 7.0 and less than or equal to 9.0, and student 
--ID is between 102 and 108.

SELECT * FROM STUDENT WHERE SPI > 7.0 AND SPI <= 9.0 AND STDID BETWEEN 102 AND 108