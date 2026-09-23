
SELECT *FROM DEPOSIT_DETAIL

--11. Rename column adate to aopendate.  

SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDDATE'

--12. Delete column aopendate from DEPOSIT_DETAIL table.

ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDDATE;

--13. Rename column cname to customer_name.  

SP_RENAME 'DEPOSIT_DETAIL.CNAME','CUSTOMER_NAME'

--14. Add column country varchar(20).  

ALTER TABLE DEPOSIT_DETAIL ADD COUNTRY VARCHAR(20)

--15. Add column account_type varchar(15).

ALTER TABLE DEPOSIT_DETAIL ADD ACCOUNT_TYPE VARCHAR(15)
