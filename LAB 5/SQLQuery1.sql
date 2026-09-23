SELECT *FROM DEPOSIT_DETAIL

ALTER TABLE DEPOSIT ADD STATE VARCHAR(20);

--2. Add two more columns city varchar(20) and pincode int. 

ALTER TABLE DEPOSIT ADD CITY VARCHAR(20) , PINCODE INT

--3. Change the size of cname column from varchar(50) to varchar(35).  

ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35) 

--4. Change the data type of amount from decimal to int.  

ALTER TABLE DEPOSI ALTER COLUMN AMOUNT INT

--5. Delete column city from the DEPOSIT table. 

ALTER TABLE DEPOSIT DROP COLUMN CITY

--6. Rename column actno to ano.  

SP_RENAME 'DEPOSIT.ACTNO','ANO'

--7. Rename column bname to branch_name.  

SP_RENAME 'DEPOSIT.BNAME','BRANCH_NAME'

--8. Rename table DEPOSIT to DEPOSIT_DETAIL.  

SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL'

--9. Add column ifsc_code varchar(15).  

ALTER TABLE DEPOSIT_DETAIL ADD IFSC_CODE VARCHAR(15)

--10. Change the size of bname column from varchar(50) to varchar(30). 

ALTER TABLE DEPOSIT_DETAIL ALTER COLUMN BNAME VARCHAR(30)