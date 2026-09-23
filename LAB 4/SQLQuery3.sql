SELECT * FROM STUDENT

 --Update SPI of student with stdid 110 to NULL.  

UPDATE STUDENT SET SPI = NULL WHERE STDID = 110;

 --Update branch of VISHAL to NULL. 

UPDATE STUDENT SET BRANCH = NULL WHERE SNAME = 'VISHAL';

 --Display names of students whose SPI is NULL. 

SELECT SNAME FROM STUDENT WHERE SPI IS NULL;

 --Display students who have branch assigned.  

SELECT * FROM STUDENT WHERE BRANCH IS NOT NULL;

--Update student with stdid 108 to name DARSHAN, branch COMPUTER, and SPI 8.50. 

UPDATE STUDENT SET SNAME = 'DARSHAN',BRANCH = 'COMPUTER',SPI = 8.50 WHERE STDID = 108;

--Update city to SURAT where SPI is less than 7.00.  

UPDATE STUDENT SET CITY = 'SURAT' WHERE SPI < 7.00;

 --Update city to NULL and branch to MECHANICAL where stdid is 109. 

UPDATE STUDENT SET City = NULL,BRANCH = 'MECHANICAL' WHERE STDID = 109;