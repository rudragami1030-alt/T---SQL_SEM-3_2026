--From the table EMPLOYEE perform the following queries:  

----------------------------------Part – A:----------------------------------  
SELECT * FROM EMPLOYEE
--1. Create a stored procedure to generate department-wise salary statistics like total salary, average salary, minimum salary, and maximum salary. (User enter only department name)
CREATE OR ALTER PROCEDURE DEPAR_DATA 
    @DEPATNAMENAME VARCHAR(100)
AS
BEGIN
    SELECT 
        DEPARTMENT AS DEPATNAME,
        SUM(SALARY) AS TOTAL,
        AVG(SALARY) AS AVERAGE,
        MIN(SALARY) AS MINS,
        MAX(SALARY) AS MAXS
    FROM EMPLOYEE

    WHERE DEPARTMENT = @DEPATNAMENAME
    GROUP BY DEPARTMENT
END;

EXEC DEPAR_DATA 'IT'

--2. Create a stored procedure that accepts a joining year and displays employees who joined that year. 

CREATE OR ALTER PROCEDURE STORE
    @JOINGYEAR INT
AS
BEGIN
    SELECT * FROM EMPLOYEE
    WHERE JOININGYEAR = @JOINGYEAR;
END;

EXEC STORE 2022;


--3. Create a stored procedure for dynamic employee search using parameters (User may enter partial city name). 

CREATE OR ALTER PROCEDURE STOREED
    @CITY VARCHAR(100)
AS
BEGIN
    SELECT * FROM EMPLOYEE
    WHERE CITY LIKE '%'+@CITY+'%'
    
END;

EXEC STOREED 'RAJKOT'

--4. Create a stored procedure that accepts a salary amount and displays employees earning more than the entered salary.

CREATE OR ALTER PROCEDURE STOREED
    @SALARY INT
AS
BEGIN
    SELECT * FROM EMPLOYEE
    WHERE SALARY > @SALARY
    
END;

EXEC STOREED 12000

--5. Create a stored procedure to display top N highest paid employees from each department (Value of N is entered by user). 

CREATE OR ALTER PROCEDURE TOPN_EMP_BY_DEPT
    @N INT
AS
BEGIN
    SELECT * FROM EMPLOYEE
    WHERE SALARY <= @N;
END;

--6. Create a stored procedure to increase salary department-wise by a given percentage. (User Enter Department Name and %, e.g. Computer 10). 
--7. Create a stored procedure to display employees having experience greater than or equal to the entered years. 
--8. Create a stored procedure that accepts a number as input and displays details of the last N employees who joined the organization. 
 

--From the table AUTHOR, PUBLISHER and BOOK perform the following queries:  
------------------------------------Part – B:------------------------------------ 

--9. Create a stored procedure that accepts an author name and displays all books written by that author. 
--10. Create a stored procedure that accepts a publication year and displays books published after that year. 
--11. Create a stored procedure that accepts a country name and displays all authors from that country with their books. 
--12. Create a stored procedure that accepts a number as input and displays the top N most expensive books with author and publisher details. 
 
------------------------------------Part – C:------------------------------------

--13. Create a stored procedure that accepts a publisher name and displays the total number of books published by that publisher. 
--14. Create a stored procedure that accepts a price range (Min Price Max Price) and displays books whose prices fall within that range. 
--15. Create a stored procedure that accepts an author ID and deletes all books written by that author. 