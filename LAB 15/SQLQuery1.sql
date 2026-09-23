--From the table PUBLISHER, AUTHOR and BOOK perform the following queries: 

----------------Part – A:----------------

--1. List all books with their authors. 

SELECT B.TITLE ,A.AUTHORNAME
FROM BOOK B
JOIN AUTHOR A 
ON B.AUTHORID = A.AUTHORID

--2. List all books with their publishers. 

SELECT B.TITLE , P.PUBLISHERNAME
FROM BOOK B
JOIN PUBLISHER P
ON B.PUBLISHERID = P.PUBLISHERID

--3. List all books with their authors and publishers. 

SELECT B.TITLE,A.AUTHORNAME, P.PUBLISHERNAME
FROM BOOK B
JOIN AUTHOR A 
ON B.AUTHORID = A.AUTHORID

JOIN PUBLISHER P 
ON B.PUBLISHERID = P.PUBLISHERID

--4. List all books published after 2010 with their authors and publisher and price. 

SELECT B.TITLE , A.AUTHORNAME,P.PUBLISHERNAME,B.PRICE
FROM BOOK B
JOIN AUTHOR A
ON B.AUTHORID = A.AUTHORID

JOIN PUBLISHER P
ON B.PUBLISHERID = P.PUBLISHERID

WHERE PUBLICATIONYEAR > 2010

--5. List all authors and the number of books they have written. 

SELECT A.AUTHORNAME , COUNT(B.PUBLISHERID)
FROM AUTHOR A
JOIN BOOK B
ON A.AUTHORID = B.AUTHORID
GROUP BY A.AUTHORNAME

--6. List all publishers and the total price of books they have published. 

SELECT P.PUBLISHERNAME,SUM(B.PRICE)
FROM PUBLISHER P
JOIN BOOK B
ON P.PUBLISHERID = B.PUBLISHERID
GROUP BY P.PUBLISHERNAME

--7. List authors who have not written any books. 

SELECT *
FROM AUTHOR A
LEFT JOIN BOOK B
ON A.AUTHORID = B.AUTHORID
WHERE B.BOOKID IS NULL
--8. Display the total number of books written by each author along with the average price of their books. 

SELECT *
FROM BOOK B
JOIN AUTHOR A
ON B.AUTHORID = A.AUTHORID

--9. lists each publisher along with the total number of books they have published, sorted from highest to lowest. 

SELECT P.PUBLISHERNAME , COUNT(B.PUBLISHERID)
FROM PUBLISHER P
JOIN BOOK B
ON P.PUBLISHERID = B.PUBLISHERID
GROUP BY P.PUBLISHERNAME
ORDER BY P.PUBLISHERNAME DESC

--10. Display number of books published each year. 

SELECT B.PUBLICATIONYEAR,COUNT(B.BOOKID)
FROM BOOK B
JOIN PUBLISHER P
ON B.PUBLISHERID = P.PUBLISHERID
GROUP BY B.PUBLICATIONYEAR


--------------Part – B:-------------- 

CREATE TABLE EMPLOYEE_MASTER (
    EMPLOYEENO VARCHAR(10),
    NAMES VARCHAR(50),
    MANAGERNO VARCHAR(10),
);

INSERT INTO EMPLOYEE_MASTER VALUES
('E01', 'TARUN', NULL),
('E02', 'ROHAN', 'E02'),
('E03', 'PRIYA', 'E01'),
('E04', 'MILAN', 'E03'),
('E05', 'JAY', 'E01'),
('E06', 'ANJANA', 'E04');

SELECT * FROM EMPLOYEE_MASTER

-- 11. List the publishers whose total book prices exceed 500, ordered by the total price.

SELECT P.PUBLISHERNAME, SUM(B.PRICE)
FROM PUBLISHER P
LEFT JOIN BOOK B 
ON P.PUBLISHERID = B.PUBLISHERID
GROUP BY P.PUBLISHERNAME
HAVING SUM(B.PRICE) > 500
ORDER BY P.PUBLISHERNAME;

-- 12. List most expensive book for each author, sort it with the highest price.

SELECT A.AUTHORNAME, B.TITLE, MAX(B.PRICE)
FROM AUTHOR A
INNER JOIN BOOK B ON A.AUTHORID = B.AUTHORID    
GROUP BY A.AUTHORNAME, B.TITLE
ORDER BY A.AUTHORNAME DESC;

-- 13. Display publisher name and difference between maximum and minimum book price.

SELECT P.PUBLISHERNAME, (MAX(B.PRICE) - MIN(B.PRICE)) 
FROM PUBLISHER P
INNER JOIN BOOK B 
ON P.PUBLISHERID = B.PUBLISHERID
GROUP BY P.PUBLISHERNAME;

-- 14. List publisher name and total price of books published each year.

SELECT P.PUBLISHERNAME, B.PUBLICATIONYEAR, SUM(B.PRICE) 
FROM PUBLISHER P
INNER JOIN BOOK B
ON P.PUBLISHERID = B.PUBLISHERID
GROUP BY P.PUBLISHERNAME, B.PUBLICATIONYEAR
ORDER BY B.PUBLICATIONYEAR;

-- 15. Display author name and total price of books sorted by highest total price.

SELECT A.AUTHORNAME,SUM(B.PRICE)
FROM AUTHOR A
INNER JOIN BOOK B
ON A.AUTHORID = B.AUTHORID
GROUP BY A.AUTHORNAME
ORDER BY SUM(B.PRICE) DESC;


----------------PART -C----------------

-- 16. Retrieve the names of employee along with their manager’s name from the Employee table.

SELECT E.NAMES , M.NAMES
FROM EMPLOYEE_MASTER E
LEFT JOIN EMPLOYEE_MASTER M
 ON E.EMPLOYEENO = M.EMPLOYEENO;

-- 17. Display employees who are managers.

SELECT M.NAMES
FROM EMPLOYEE_MASTER E
INNER JOIN EMPLOYEE_MASTER M 
ON E.EMPLOYEENO = M.EMPLOYEENO;