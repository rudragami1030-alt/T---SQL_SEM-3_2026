-- Display the result of 5 multiply by 30. 

SELECT 5 * 30 AS RESULT;

--2. Find out the absolute value of -25, 25, -50 and 50. 

SELECT ABS(-25),ABS(25),ABS(-50),ABS(50) AS RESULT

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2. 

SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2. 

SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

--5. Find out remainder of 5 divided 2 and 5 divided by 3.

SELECT 5 % 2 AS REMAINDER_1,
5 % 3 AS REMAINDER_2;

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power. 

SELECT POWER(4,2)

--7. Find out the square root of 25, 30 and 50. 

SELECT SQRT(25),SQRT(30),SQRT(50)

--8. Find out the square of 5, 15, and 25. 

SELECT SQUARE(5),SQUARE(15),SQUARE(25)

--9. Find out the value of PI. 

SELECT PI()

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points. 

SELECT ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-2)
 
--11. Find out exponential value of 2 and 3. 

SELECT EXP(2),EXP(3);

--12. FIND OUT LOGARITHM HAVING BASE E OF 10 AND 2.

SELECT LOG10(10),LOG10(2)

--13. Find logarithm base 10 of 5 and 100 

SELECT LOG10(5),LOG10(100)

--14. Find sine, cosine and tangent of 3.1415. 

SELECT SIN(3.1415),COS(3.1415),TAN(3.1415)

--15. Find sign of -25, 0 and 25. 

SELECT SIGN(-25),SIGN(0),SIGN(-25)

--16. Generate random number using function. 

SELECT RAND() AS RANDOM_NUMBER;

------------------------------------String functions------------------------------------

-- 1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank

SELECT LEN(NULL),LEN('HELLO'),LEN('BLANK')

-- 2. Display your name in lower & upper case.

SELECT LOWER('RUDRA'),upper('RUDRA')

-- 3. Display first three characters of your name.

SELECT LEFT('RUDRA',3)

-- 4. Display 3rd to 10th character of your name.

SELECT SUBSTRING('RUDRAGAMI',3,7)

-- 5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.

SELECT REPLACE('ABC123EFG','ABCXYZEFG'),REPLACE('ABCABCCABC','AB5AB5AB5')

-- 6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.

SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9) 

-- 7. Display character from ASCII number.
SELECT
CHAR(97) AS Char1,
CHAR(65) AS Char2,
CHAR(122) AS Char3,
CHAR(90) AS Char4,
CHAR(48) AS Char5,
CHAR(57) AS Char6;

-- 8. Remove left spaces.
SELECT LTRIM('   hello world  ') AS Left_Trim;

-- 9. Remove right spaces.
SELECT RTRIM('   hello world  ') AS Right_Trim;

-- 10. Display first 4 and last 5 characters.
SELECT
LEFT('SQL Server',4) AS First4,
RIGHT('SQL Server',5) AS Last5;

-- 11. Convert string to number.
SELECT
CAST('1234.56' AS DECIMAL(10,2)) ,
CONVERT(DECIMAL(10,2),'1234.56') 

-- 12. Convert float to integer.
SELECT
CAST(10.58 AS INT),
CONVERT(INT,10.58)

-- 13. Put 10 spaces before your name.
SELECT SPACE(10) + 'RUDRA'

-- 14. Combine two strings.

SELECT CONCAT('HELLO',' ','RUDRA')

-- 15. Reverse "Darshan".
SELECT REVERSE('Darshan')

-- 16. Repeat your name 3 times.
SELECT REPLICATE('RUDRA',3)


-----------------------------Part – C: Perform following queries on EMPLOYEE table.-----------------------------

--24. DISPLAY FIRSTNAME WITHOUT FIRST AND LAST CHARACTER.
SELECT SUBSTRING(FIRSTNAME,2,LEN(FIRSTNAME)-2) AS RESULT
FROM EMPLOYEE;

--25. DISPLAY FIRSTNAME AFTER REPLACING VOWELS WITH '*'.
SELECT REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(FIRSTNAME,'A','*'),'E','*'),'I','*'),'O','*'),'U','*') AS RESULT
FROM EMPLOYEE;

--26. DISPLAY EMPLOYEES WHERE COMBINED LENGTH OF FIRSTNAME AND LASTNAME IS GREATER THAN 10.
SELECT FIRSTNAME, LASTNAME
FROM EMPLOYEE
WHERE LEN(FIRSTNAME) + LEN(LASTNAME) > 10;

--27. DISPLAY FIRSTNAME AND ITS REVERSE.
SELECT FIRSTNAME, REVERSE(FIRSTNAME) AS REVERSED_NAME
FROM EMPLOYEE;

--28. DISPLAY EMPLOYEES WHOSE FIRSTNAME AND LASTNAME START WITH SAME CHARACTER USING LEFT().
SELECT FIRSTNAME, LASTNAME
FROM EMPLOYEE
WHERE LEFT(FIRSTNAME,1) = LEFT(LASTNAME,1);
