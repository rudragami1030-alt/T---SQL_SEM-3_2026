SELECT *FROM STUDENT

--Give 10% increment in SPI.

UPDATE STUDENT SET SPI = SPI*1.1

--Increase SPI by 20% for all students.  

UPDATE STUDENT SET SPI = SPI*1.2

-- Increase SPI by 0.50 in all records.  

UPDATE STUDENT SET SPI = SPI + 0.50

-- Update branch to 'EC' and SPI to 8.00 and city to Surat where SNAME is KRUNAL.  

UPDATE STUDENT SET BRANCH = 'ES', SPI = 8.00 , CITY = 'SURAT' WHERE SNAME = 'KRUNAL'

--Update city to 'RAJKOT' and SPI to 7.00 where branch is CIVIL and stdid is less than 105. 

UPDATE STUDENT SET CITY = 'RAJKOT', SPI = 7.00 WHERE BRANCH = 'CIVIL' AND STDID < 105
