SELECT * FROM EMPLOYEE
--1. Display cities where total salary of employees greater than 20000. 

SELECT CITY, SUM(SALARY) AS TOTALSALARY
FROM EMPLOYEE
GROUP BY CITY
HAVING SUM(SALARY) > 20000;

--2. Display departments having average salary greater than 12000

SELECT DEPARTMENT, AVG(SALARY) AS AVE
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 12000;

--3. Display departments having total salary greater than 20000. 

SELECT DEPARTMENT, SUM(SALARY) AS TOTALSALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING SUM(SALARY) > 20000;

--4. Display departments having number of employees greater than 2. 

SELECT DEPARTMENT, COUNT(*) AS TOTALSALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING COUNT(*) > 2;

--5. Display cities where minimum salary less than 7000.

SELECT CITY, MIN(SALARY) AS TOTALSALARY
FROM EMPLOYEE
GROUP BY CITY
HAVING MIN(SALARY) < 7000;

--6. Display cities where average salary less than 12000. 

SELECT CITY, AVG(SALARY) AS TOTALSALARY
FROM EMPLOYEE
GROUP BY CITY
HAVING AVG(SALARY) < 12000;

--7. Display departments where maximum salary greater than 14000.

SELECT DEPARTMENT, MAX(SALARY) AS TOTALSALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING MAX(SALARY) > 14000;

--8. Display cities where total salary greater than equal to 30000. 

SELECT CITY, SUM(SALARY) AS TOTALSALARY
FROM EMPLOYEE
GROUP BY SUM(SALARY)
HAVING SUM(SALARY) >= 30000;

--9. Display departments having number of employees equal to 2. 

SELECT DEPARTMENT, COUNT(*) AS TOTAL
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING COUNT(*) = 2;

--10. Display cities having number of female employees greater than equal to 1. 

SELECT CITY, COUNT(*) AS TOTAL
FROM EMPLOYEE
WHERE GENDER = 'FEMALE'
GROUP BY CITY
HAVING COUNT(*) >=  1;

--11. Display departments where minimum salary of male employees greater than 7000. 

SELECT DEPARTMENT, MIN(SALARY) AS SALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING MIN(SALARY) >= 7000;

--12. Display cities where maximum salary of female employees less than 13000. 

SELECT CITY, MAX(SALARY) AS SALARY
FROM EMPLOYEE
GROUP BY CITY
HAVING MAX(SALARY) <= 13000;

--13. Display departments where average salary greater than 10000 and less than 14000.

SELECT DEPARTMENT, AVG(SALARY) AS SALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 10000 AND AVG(SALARY) < 14000;

--14. Display cities where number of employees joined before 2023 greater than 1. 

SELECT CITY, MAX(SALARY) AS SALARY
FROM EMPLOYEE
GROUP BY CITY
HAVING MAX(SALARY) <= 13000;

--15. Display cities where total salary of male employees greater than 15000, ordered by total salary. 

SELECT CITY , SUM(SALARY) AS SALARY
FROM EMPLOYEE
WHERE GENDER = 'MALE'
GROUP BY CITY
HAVING SUM(SALARY) > 15000
ORDER BY SALARY

--16. Display departments where maximum salary greater than 13000, ordered by max salary. 

SELECT DEPARTMENT , MAX(SALARY) AS SALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING MAX(SALARY) > 13000
ORDER BY MAX(SALARY)

--17. Display cities where total salary of male employees greater than 15000. 

SELECT CITY , SUM(SALARY) AS SALARY
FROM EMPLOYEE
WHERE GENDER = 'MALE'
GROUP BY CITY
HAVING MAX(SALARY) > 15000

--18. Display departments where employees joined after 2022 and count greater than 1.  

SELECT DEPARTMENT , COUNT(*) AS EMP
FROM EMPLOYEE
WHERE JOININGYEAR > 2022
GROUP BY DEPARTMENT
HAVING COUNT(*) > 1

--19. Display departments where average salary of female employees greater than 8000.  

SELECT DEPARTMENT, AVG(SALARY) AS AVG
FROM EMPLOYEE
WHERE GENDER = 'FEMALE'
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 8000;


--20. Display departments having total salary greater than 20000 and less than 40000.

SELECT DEPARTMENT, SUM(SALARY) AS TS
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING SUM(SALARY) > 20000 AND SUM(SALARY) < 40000;


-----------------------------------------------Part – C:-----------------------------------------------


--26. Display cities where number of male employees greater than female employees.

SELECT CITY, SUM(EID) AS COUNTT
FROM EMPLOYEE
GROUP BY CITY
HAVING SUM(CASE WHEN GENDER = 'MALE' THEN 1 ELSE 0 END) > SUM(CASE WHEN GENDER = 'FEMALE' THEN 1 ELSE 0 END);

--27. Display departments having number of cities greater than 1.

SELECT DEPARTMENT, COUNT(DISTINCT CITY)
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING COUNT(DISTINCT CITY) > 1;

--28. Display cities where total salary excluding IT department greater than 15000.

SELECT CITY ,SUM(SALARY)
FROM EMPLOYEE
WHERE DEPARTMENT <> 'IT'
GROUP BY CITY
HAVING SUM(SALARY) > 15000;

--29. Display departments where average salary excluding HR employees greater than 11000.

SELECT DEPARTMENT
FROM EMPLOYEE
WHERE DEPARTMENT <> 'HR'
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 11000;

--30. Display departments where total salary of male employees greater than female employees.

SELECT DEPARTMENT
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING SUM(CASE WHEN GENDER = 'MALE' THEN SALARY ELSE 0 END) > SUM(CASE WHEN GENDER = 'FEMALE' THEN SALARY ELSE 0 END);



------------------------------------------EXTRAAA------------------------------------------

CREATE TABLE PROJECT_ASSIGNMENTS ( 
ASSIGNMENT_ID INT PRIMARY KEY, 
EMPLOYEE_NAME VARCHAR (50), 
DEPARTMENT VARCHAR (30), 
HOURS_WORKED INT 
); 

INSERT INTO PROJECT_ASSIGNMENTS VALUES 
(101,'AYANAA','AI',38), 
(102,'KIRAY','CLOUD',45), 
(103,'NEEL','AI',42), 
(104,'MEERA','SECURITY',31), 
(105,'ROHAN','CLODE',50), 
(106,'ISHITA','AI',29), 
(107,'DEV','SECURITY',47), 
(108,'SANA','CLOUD',36), 
(109,'ARJUN','SECURITY',41), 
(110,'TARA','AI',42)

SELECT * FROM PROJECT_ASSIGNMENTS

--1) Display each department and the total hours worked. 

SELECT DEPARTMENT , SUM(HOURS_WORKED)
FROM PROJECT_ASSIGNMENTS
GROUP BY DEPARTMENT

--2) Show departments where the total hours worked are greater than 120. 

SELECT DEPARTMENT ,SUM(HOURS_WORKED)
FROM PROJECT_ASSIGNMENTS
GROUP BY DEPARTMENT
HAVING SUM(HOURS_WORKED) > 120
--3) Find the average hours worked in each department and display 
--them from highest to lowest average. 
--4) Display departments having more than 3 employees. 
--5) Show departments whose maximum hours worked exceed 45. 
--6) Find departments where the minimum hours worked is less than 30 
--and sort by minimum hours. 
--7) Display each department with employee count and total hours. 
--Show only departments having an average greater than 40. 
--8) Find departments where total hours are between 100 and 170. 
--Display them in descending order of total hours. 
--9) Display departments having at least 3 employees. Sort first by 
--employee count (descending), then by department name 
--(ascending). 
--10) Display each department with: 
--• Number of employees  
--• Total hours worked  
--• Average hours worked  
--Show only departments where: 
--• Total hours are greater than 110  
--• Average hours are greater than 38  
--Sort by average hours (descending) and then department name.