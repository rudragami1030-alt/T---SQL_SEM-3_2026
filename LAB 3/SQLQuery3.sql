--24. Display all details of students who have SPI more than 8.5 without using * from STUDENT table. 


SELECT STDID ,SNAME , CITY , SPI , BRANCH FROM STUDENT WHERE SPI >8.5

--Retrieve names of students whose city is ‘RAJKOT’ and SPI is less than 8.00. --

SELECT SNAME FROM STUDENT WHERE CITY = 'RAJKOT' AND SPI < 8.00;

--Retrieve records from STUDENT table where SPI is greater than 8.0 and student ID is less than 105.--

SELECT *FROM STUDENT WHERE STDID < 105 AND SPI > 8.00;

----Retrieve records from STUDENT table where SPI is greater than 7.5 and student ID is between 100 and 
--110 and city is ‘RAJKOT’ or ‘SURAT .--

SELECT *FROM STUDENT WHERE SPI > 7.5 AND STDID BETWEEN 100 AND 110 AND CITY = 'RAJKOT' OR CITY = 'SURAT'

--28. Display details of students who belong to ‘CIVIL’ or ‘MECHANICAL’ branch and SPI is greater than 8.0. 

SELECT *FROM STUDENT WHERE BRANCH = 'CIVIL' OR BRANCH = 'MECHANICAL' AND SPI > 8.0

