
use CUSTOMER_DB;

DROP PROCEDURE IF EXISTS getNames;

delimiter ##

CREATE PROCEDURE getNames(city varchar(25))
BEGIN
    select CUST_NAME from customer where WORKING_AREA = city;
END ##

delimiter ;

CALL getNames('Bangalore');
