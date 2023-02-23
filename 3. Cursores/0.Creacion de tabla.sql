--------------------------------------------------------
--  DDL for Table PAYMENTS
--------------------------------------------------------

  CREATE TABLE PAYMENTS 
   (	ID NUMBER(15,0) PRIMARY KEY, 
	CLIENT_ID NUMBER(15,0), 
	CREATE_AT DATE, 
	AMOUNT NUMBER(30,0)
   ) ;

Insert into PAYMENTS (ID,CLIENT_ID,CREATE_AT,AMOUNT) values ('1','30',to_date('22/02/23','DD/MM/RR'),'1500');
Insert into PAYMENTS (ID,CLIENT_ID,CREATE_AT,AMOUNT) values ('2','10',to_date('22/02/23','DD/MM/RR'),'700');
Insert into PAYMENTS (ID,CLIENT_ID,CREATE_AT,AMOUNT) values ('3','50',to_date('22/02/23','DD/MM/RR'),'100');
Insert into PAYMENTS (ID,CLIENT_ID,CREATE_AT,AMOUNT) values ('4','30',to_date('22/02/23','DD/MM/RR'),'1500');
Insert into PAYMENTS (ID,CLIENT_ID,CREATE_AT,AMOUNT) values ('5','10',to_date('22/02/23','DD/MM/RR'),'700');
Insert into PAYMENTS (ID,CLIENT_ID,CREATE_AT,AMOUNT) values ('6','50',to_date('22/02/23','DD/MM/RR'),'100');
