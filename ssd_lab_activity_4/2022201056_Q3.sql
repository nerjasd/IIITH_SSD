use CUSTOMER_DB;

DROP PROCEDURE IF EXISTS getInfo;

delimiter ##

CREATE PROCEDURE getInfo()
BEGIN
    select CUST_NAME, GRADE from customer where (OPENING_AMT+RECEIVE_AMT) > 10000;
END ##

delimiter ;

CALL getInfo();
