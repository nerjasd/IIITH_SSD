use CUSTOMER_DB;

DROP PROCEDURE IF EXISTS agentCode;

delimiter ##

CREATE PROCEDURE agentCode()
BEGIN
    declare aname varchar(25);
    declare acity varchar(25);
    declare acountry varchar(25);
    declare agrade varchar(25);
    declare flag int  default 0;
    declare cue CURSOR FOR 
        select CUST_NAME,CUST_CITY,CUST_COUNTRY,GRADE from customer WHERE AGENT_CODE LIKE "A00%";
    declare CONTINUE HANDLER
    FOR NOT FOUND SET flag=1;
    
    open cue;
    
        getinfo: LOOP
            fetch cue into aname,acity,acountry,agrade;
            if flag=1 then 
                leave getinfo;
            end if;
            select CONCAT(aname,"-",acity,"-",acountry,"-",agrade);
        end loop getinfo;

    close cue;

END ##

delimiter ;

call agentCode();