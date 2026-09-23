----------------------------------------------------Part – A:----------------------------------------------------

--1.	Create trigger for printing message after employee record insertion.

CREATE TRIGGER EMP_INSERT
ON EMPLOYEE
AFTER INSERT
AS
BEGIN 
PRINT 'INSERT HAPPEND'
END

INSERT INTO EMPLOYEE (EID , FIRSTNAME , LASTNAME , DEPARTMENT )
VALUES (122,'DHAIRYA','DAHISARIYA','ADMIN')

--2.	Create trigger for printing message after employee record update. 

CREATE TRIGGER EMP_UPDATE
ON EMPLOYEE
AFTER UPDATE
AS
BEGIN 
PRINT 'UPDATE HAPPEND'
END

UPDATE EMPLOYEE
SET FIRSTNAME='DHAIRYA'
WHERE EID= 112

--3.	Create trigger for printing message after employee record deletion.

CREATE TRIGGER EMP_DLT
ON EMPLOYEE
AFTER DELETE
AS
BEGIN 
PRINT 'DELETE HAPPEND'
END

DELETE EMPLOYEE
WHERE EID = 109

--4.	Create trigger for printing message after employee salary increment. 

CREATE  OR ALTER TRIGGER TRG_EMPLOYEE_SALARY_INCREMENT
    ON EMPLOYEE
    AFTER UPDATE
    AS BEGIN

        DECLARE @OLD_SALARY AS FLOAT;
        DECLARE @NEW_SALARY AS FLOAT;

        SELECT @OLD_SALARY = SALARY FROM DELETED;
        SELECT @NEW_SALARY = SALARY FROM INSERTED;

        IF @NEW_SALARY > @OLD_SALARY
            BEGIN
                PRINT 'Employee salary incremented' ;
            END
        ELSE
            BEGIN
                PRINT 'Employee salary not incremented.';
            END


       END

       UPDATE EMPLOYEE
       SET    SALARY = SALARY + 1000
       WHERE  EID = 101;

         SELECT * FROM   EMPLOYEE;


-- 5. Create trigger for automatically converting CITY names into uppercase during insertion.

CREATE OR ALTER TRIGGER TRG_EMPLOYEE_CITY_UPPERCASE
    ON EMPLOYEE
    AFTER INSERT
    AS BEGIN
           UPDATE EMPLOYEE
           SET    CITY = UPPER(CITY)
           WHERE  EID IN (SELECT EID FROM INSERTED);
       END

       INSERT  INTO EMPLOYEE (
                EID,
                FIRSTNAME,
                LASTNAME,
                DEPARTMENT,
                SALARY,
                CITY
            )
             VALUES(113, 'Jane', 'Smith', 'HR', 55000, 'mumbai');

         SELECT * FROM   EMPLOYEE;
 
----------------------------------------------------Part – B:---------------------------------------------------- 

-- 6. Create trigger for updating employee city and printing old city and new city name.

CREATE OR ALTER TRIGGER TRG_EMPLOYEE_CITY_UPDATE
    ON EMPLOYEE
    AFTER UPDATE
    AS BEGIN
           DECLARE @OLD_CITY AS VARCHAR(50);
           DECLARE @NEW_CITY AS VARCHAR(50);

           SELECT @OLD_CITY = CITY FROM DELETED;
           SELECT @NEW_CITY = CITY FROM INSERTED;

           PRINT 'Employee city updated from ' + @OLD_CITY + ' to ' + @NEW_CITY;
       END

       UPDATE EMPLOYEE
       SET    CITY = 'DELHI'
       WHERE  EID = 113;

         SELECT * FROM   EMPLOYEE;

-- 7. Create trigger for automatically setting CITY as 'RAJKOT' if no city value is entered during employee insertion.

CREATE OR ALTER TRIGGER TRG_EMPLOYEE_CITY_DEFAULT
    ON EMPLOYEE
    AFTER INSERT
    AS BEGIN
           UPDATE EMPLOYEE
           SET    CITY = 'RAJKOT'
           WHERE  EID IN (SELECT EID FROM INSERTED)
           AND    CITY IS NULL;
       END

       INSERT  INTO EMPLOYEE (
                EID,
                FIRSTNAME,
                LASTNAME,
                DEPARTMENT,
                SALARY,
                CITY
            )
             VALUES(114, 'HARSH', 'MUNGARA', 'RUDRA', 70000, NULL);
             
-- 8. Create trigger for automatically adding current year in JOININGYEAR if no value is entered.

CREATE OR ALTER TRIGGER TRG_EMPLOYEE_JOININGYEAR_DEFAULT
    ON EMPLOYEE
    AFTER INSERT
    AS BEGIN
           UPDATE EMPLOYEE
           SET    JOININGYEAR = YEAR(GETDATE())
           WHERE  EID IN (SELECT EID FROM INSERTED)
           AND    JOININGYEAR IS NULL;
       END

       INSERT  INTO EMPLOYEE (
                EID,
                FIRSTNAME,
                LASTNAME,
                DEPARTMENT,
                SALARY,
                CITY,
                JOININGYEAR
            )
             VALUES(115, 'RAJ', 'PATEL', 'MARKETING', 65000, 'SURAT', NULL);

 
-- 9. Create trigger for printing employee full name after new employee insertion.

CREATE OR ALTER TRIGGER TRG_EMPLOYEE_FULLNAME_PRINT
    ON EMPLOYEE
    AFTER INSERT
    AS BEGIN
           DECLARE @FULLNAME AS VARCHAR(100);
           SELECT @FULLNAME = FIRSTNAME + ' ' + LASTNAME FROM INSERTED;
           PRINT 'New employee inserted: ' + @FULLNAME;
       END

       INSERT  INTO EMPLOYEE (
                EID,
                FIRSTNAME,
                LASTNAME,
                DEPARTMENT,
                SALARY,
                CITY
            )
             VALUES(116, 'PRIYA', 'SHARMA', 'SALES', 60000, 'AHMEDABAD');
-- 10. Create trigger for automatically assigning department as ‘GENERAL’ if DEPARTMENT value is NULL.


CREATE OR ALTER TRIGGER TRG_EMPLOYEE_DEPARTMENT_DEFAULT
    ON EMPLOYEE
    AFTER INSERT
    AS BEGIN
           UPDATE EMPLOYEE
           SET    DEPARTMENT = 'GENERAL'
           WHERE  EID IN (SELECT EID FROM INSERTED)
           AND    DEPARTMENT IS NULL;
       END

       INSERT  INTO EMPLOYEE (
                EID,
                FIRSTNAME,
                LASTNAME,
                DEPARTMENT,
                SALARY,
                CITY
            )
             VALUES(117, 'RAHUL', 'KUMAR', NULL, 55000, 'VADODARA');

         SELECT * FROM   EMPLOYEE;

 


----------------------------------------------------Part – C:---------------------------------------------------- 
--11. Create trigger for storing updated employee details such as EID, old salary, new salary, old department, new department, and update date into EMPLOYEE_UPDATE_LOG table. 
--12. Create trigger for storing newly inserted employee details with insertion date into EMPLOYEE_INSERT_LOG table. 
--13. Create trigger for storing old and new FIRSTNAME values after employee name update into NAME_CHANGE_LOG table. 
--14. Create trigger for storing old city and new city details into CITY_UPDATE_LOG table after city update. 
--15. Implement INSTEAD OF INSERT trigger on EMPLOYEE table to automatically remove extra spaces from FIRSTNAME and LASTNAME before insertion.