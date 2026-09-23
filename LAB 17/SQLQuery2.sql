CREATE TABLE EMPLOYEE(
   EID INT,
   FIRSTNAME VARCHAR(50),
   LASTNAME VARCHAR(50),
   DEPARTMENT VARCHAR(50),
   SALARY DECIMAL(7,2),
   CITY VARCHAR(50),
   GENDER VARCHAR(10),
   JOININGYEAR INT
);

INSERT INTO EMPLOYEE VALUES
(101, 'HETVI', 'PATEL', 'ADMIN', 12000.00, 'RAJKOT', 'FEMALE', 2026),
(102, 'RAJ', 'MEHTA', 'IT', 14000.00, 'AHMEDABAD', 'MALE', 2022),
(103, 'VISHAL', 'SHARMA', 'HR', 15000.00, 'BARODA', 'MALE', 2020),
(104, 'DEEP', 'PATEL', 'ADMIN', 12500.00, 'RAJKOT', 'MALE', 2026),
(105, 'DHAVAL', 'SHAH', 'IT', 14000.00, 'JAMNAGAR', 'MALE', 2024),
(106, 'RIYA', 'KAUR', 'IT', 5000.00, 'AHMEDABAD', 'FEMALE', 2024),
(107, 'PARAG','PANDYA', 'HR', 7000.00, 'RAJKOT','MALE',2025),
(108, 'VRUNDA','VYAS', 'SERVER',10000.00, 'BARODA','FEMALE',2022),
(109, 'MEHUL', 'SINGH',  'HR',  12000.00, 'MORBI', 'MALE',2020),
(110, 'MUBIN', 'PARMAR', 'TRANSPORT', 12000.00,'SURAT','MALE',2021),
(111,'MAYANK', 'PUROHIT', 'ACCOUNT', 13000.00, NULL, 'MALE', 2020 );

SELECT * FROM EMPLOYEE 


-------------------------------------------Part – B:------------------------------------------- 

--16. Create a view Admin_Employees that displays ADMIN department employees only. 

CREATE VIEW ADMIN_EMPLOYEE
AS
SELECT * FROM EMPLOYEE 
WHERE DEPARTMENT = 'ADMIN'

SELECT * FROM ADMIN_EMPLOYEE

--17. Create a view Female_Employees that displays female employee data only. 

CREATE VIEW FEMALE_EMPLOYEE
AS
SELECT * FROM EMPLOYEE
WHERE GENDER = 'FEMALE'

SELECT * FROM FEMALE_EMPLOYEE

--18. Create a view Male_Employees that displays male employee data only.

CREATE VIEW MALE_EMPLOYEE
AS
SELECT * FROM EMPLOYEE
WHERE GENDER = 'MALE'

SELECT * FROM MALE_EMPLOYEE

--19. Create a view Rajkot_Employees that displays employees from Rajkot city only. 

CREATE VIEW RAJKOT_EMPLOYEE
AS
SELECT * FROM EMPLOYEE
WHERE CITY = 'RAJKOT'

SELECT * FROM RAJKOT_EMPLOYEE

--20. Create a view Ahmedabad_Employees that displays employees from Ahmedabad city only. 

CREATE VIEW AHMEDABAD_EMPLOYEE
AS
SELECT * FROM EMPLOYEE
WHERE CITY = 'AHMEDABAD'

SELECT * FROM AHMEDABAD_EMPLOYEE

--21. Create a view Salary_Between that displays employees whose salary is between 10000 and 14000. 

CREATE VIEW SALARY_BETWEEN
AS
SELECT * FROM EMPLOYEE
WHERE SALARY BETWEEN 10000 AND 14000

SELECT * FROM SALARY_BETWEEN

--22. Create a view Recent_Employees that displays employees joined after 2023. 

CREATE VIEW Recent_Employees
AS
SELECT * FROM EMPLOYEE
WHERE JOININGYEAR > 2023

SELECT * FROM Recent_Employees

--23. Create a view Old_Employees that displays employees joined before 2023. 

CREATE VIEW OLD_Employees
AS
SELECT * FROM EMPLOYEE
WHERE JOININGYEAR < 2023

SELECT * FROM OLD_Employees

--24. Create a view Employees_Start_R that displays employees whose first name starts with R. 

CREATE VIEW Employees_Start_R
AS
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'R%'

SELECT * FROM Employees_Start_R

--25. Create a view Employees_End_A that displays employees whose first name ends with A. 

CREATE VIEW Employees_End_A
AS
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '%A'

SELECT * FROM Employees_End_A
 
-------------------------------------------Part – C:------------------------------------------- 

--26. Create a view Employees_NameContains_H that displays employees whose first name contains H.

CREATE VIEW Employees_NameContains_H
AS
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '%H%'

SELECT * FROM Employees_NameContains_H

--27. Create a view for the employees whose first name contains vowels. 

CREATE VIEW Employees_NameContains_VO
AS
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '%[aeiouAEIOU]%'

SELECT * FROM Employees_NameContains_VO

--28. Create a view FourLetter_Name having EID, FirstName and Department columns in which FirstName consists of four letters. 

CREATE VIEW FourLetter_Name
AS
SELECT EID,FIRSTNAME,DEPARTMENT FROM EMPLOYEE
WHERE FIRSTNAME LIKE '____'

SELECT * FROM FourLetter_Name

--29. Create a view for the employees whose name starts with M and ends with N. 

CREATE VIEW M_N
AS
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'M%N'

SELECT * FROM M_N

--30. Create a view Transport_Dept that displays Transport department employees only. 

CREATE VIEW Transport_Dept
AS
SELECT * FROM EMPLOYEE
WHERE DEPARTMENT = 'TRANSPORT'

SELECT * FROM Transport_Dept

-------------------------------------------EXTRA------------------------------------------- 

CREATE TABLE Customers ( 
CustomerID INT PRIMARY KEY, 
CustomerName VARCHAR (100) NOT NULL, 
City VARCHAR (100), 
Membership VARCHAR (20) 
); 

INSERT INTO Customers (CustomerID, CustomerName, City, Membership) VALUES 
(101, 'Alice', 'Mumbai', 'Gold'), 
(102, 'Bob', 'Delhi', 'Silver'), 
(103, 'Charlie', 'Pune', 'Gold'), 
(104, 'David', 'Ahmedabad', 'Silver'), 
(105, 'Eva', 'Mumbai', 'Platinum'); 

SELECT * FROM Customers

--Orders 
CREATE TABLE Orders ( 
OrderID INT PRIMARY KEY, 
CustomerID INT NOT NULL, 
Product VARCHAR (100) NOT NULL, 
Category VARCHAR (50), 
Quantity INT NOT NULL, 
Price DECIMAL (10,2) NOT NULL, 
FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID) 
); 

INSERT INTO Orders (OrderID, CustomerID, Product, Category, Quantity, Price) 
VALUES 
(201, 101, 'Laptop', 'Electronics', 1, 70000), 
(202, 101, 'Mouse', 'Electronics', 2, 800), 
(203, 102, 'Chair', 'Furniture', 3, 2500), 
(204, 103, 'Phone', 'Electronics', 1, 45000), 
(205, 104, 'Table', 'Furniture', 2, 6000), 
(206, 105, 'Laptop', 'Electronics', 2, 70000), 
(207, 105, 'Printer', 'Electronics', 1, 12000), 
(208, 103, 'Desk', 'Furniture', 1, 8000); 

SELECT * FROM Orders

--1) Create a view named CustomerOrders displaying: 
--• Customer Name 
--• City 
--• Product 
--• Category 
--• Quantity 
--• Price 

CREATE VIEW CustomerOrders
AS
SELECT C.CustomerName,C.City,O.Product,O.Category,O.Quantity,O.Price
FROM Customers C
JOIN Orders O
ON C.CustomerID = O.CustomerID

SELECT * FROM CustomerOrders

--2) Create a view named GoldCustomersOrders that displays all orders placed by gold members. 

CREATE VIEW GoldCustomersOrders
AS
SELECT C.City,.OrderID
FROM Customers C
JOIN Orders O
ON C.CustomerID = O.CustomerID

SELECT * FROM GoldCustomersOrders

--3) Create a view ElectronicOrders displaying only Electronics orders. 

CREATE VIEW ElectronicOrders
AS
SELECT O.Product
FROM Customers C
JOIN Orders O
ON C.CustomerID = O.CustomerID
WHERE Product = 'ELECTRONICS'

SELECT * FROM ElectronicOrders
----------------------------- PART – B -----------------------------

--12. DISPLAY TEAM NAME AND AVERAGE MATCHES PLAYED BY PLAYERS IN EACH TEAM.
SELECT T.TEAM_NAME, AVG(P.PLAYER_MATCHES_PLAYED) AS AVG_MATCHES
FROM TEAM T
JOIN PLAYER P ON T.TEAM_ID = P.TEAM_ID
GROUP BY T.TEAM_NAME;

--13. DISPLAY TEAM NAME AND MAXIMUM MATCHES PLAYED BY ANY PLAYER IN EACH TEAM.
SELECT T.TEAM_NAME, MAX(P.PLAYER_MATCHES_PLAYED) AS MAX_MATCHES
FROM TEAM T
JOIN PLAYER P ON T.TEAM_ID = P.TEAM_ID
GROUP BY T.TEAM_NAME;

--14. DISPLAY TEAM NAME AND MINIMUM MATCHES PLAYED BY ANY PLAYER IN EACH TEAM.
SELECT T.TEAM_NAME, MIN(P.PLAYER_MATCHES_PLAYED) AS MIN_MATCHES
FROM TEAM T
JOIN PLAYER P ON T.TEAM_ID = P.TEAM_ID
GROUP BY T.TEAM_NAME;

--15. DISPLAY STADIUM NAME AND TOTAL NUMBER OF PLAYERS PLAYING UNDER TEAMS OF THAT STADIUM.
SELECT S.STADIUM_NAME, COUNT(P.PLAYER_ID) AS TOTAL_PLAYERS
FROM STADIUM S
JOIN TEAM T ON S.STADIUM_ID = T.HOME_STADIUM_ID
JOIN PLAYER P ON T.TEAM_ID = P.TEAM_ID
GROUP BY S.STADIUM_NAME;


----------------------------- PART – C -----------------------------

--16. DISPLAY TEAMS HAVING MORE ALL-ROUNDERS THAN BOWLERS.
SELECT T.TEAM_NAME
FROM TEAM T
JOIN PLAYER P ON T.TEAM_ID = P.TEAM_ID
GROUP BY T.TEAM_NAME
HAVING SUM(CASE WHEN P.PLAYER_ROLE = 'ALL-ROUNDER' THEN 1 ELSE 0 END) >
       SUM(CASE WHEN P.PLAYER_ROLE = 'BOWLER' THEN 1 ELSE 0 END);

--17. DISPLAY TEAMS WHERE DIFFERENCE BETWEEN MAX AND MIN PLAYER MATCHES IS GREATER THAN 5.
SELECT T.TEAM_NAME
FROM TEAM T
JOIN PLAYER P ON T.TEAM_ID = P.TEAM_ID
GROUP BY T.TEAM_NAME
HAVING MAX(P.PLAYER_MATCHES_PLAYED) - MIN(P.PLAYER_MATCHES_PLAYED) > 5;

--18. DISPLAY STADIUM CITY AND TOTAL WINS OF TEAMS IN THAT CITY.
SELECT S.STADIUM_CITY, SUM(T.TEAM_WINS) AS TOTAL_WINS
FROM STADIUM S
JOIN TEAM T ON S.STADIUM_ID = T.HOME_STADIUM_ID
GROUP BY S.STADIUM_CITY;

--19. DISPLAY TEAM NAME AND TOTAL NUMBER OF PLAYERS FOR EACH ROLE (GROUPED BY ROLE).
SELECT T.TEAM_NAME, P.PLAYER_ROLE, COUNT(P.PLAYER_ID) AS TOTAL_PLAYERS
FROM TEAM T
JOIN PLAYER P ON T.TEAM_ID = P.TEAM_ID
GROUP BY T.TEAM_NAME, P.PLAYER_ROLE;

--20. DISPLAY TEAM NAME AND TOTAL NUMBER OF PLAYERS WHOSE NAME STARTS WITH ‘A’.
SELECT T.TEAM_NAME, COUNT(P.PLAYER_ID) AS TOTAL_PLAYERS_STARTING_WITH_A
FROM TEAM T
JOIN PLAYER P ON T.TEAM_ID = P.TEAM_ID
WHERE P.PLAYER_FIRST_NAME LIKE 'A%'
GROUP BY T.TEAM_NAME;
