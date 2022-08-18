create view V1 as (select Essn, COUNT(Sex) as No_of_females from DEPENDENT where Sex = "F" GROUP BY Essn);

create view V2 as (select Dnumber, COUNT(Dlocation) as No_of_locations from DEPT_LOCATIONS GROUP BY Dnumber);

create view V3 as (select DEPARTMENT.Dnumber,DEPARTMENT.Dname from DEPARTMENT INNER JOIN V1 on V1.Essn=DEPARTMENT.Mgr_ssn AND V1.No_of_females>=2);

select V3.Dnumber,V3.Dname,V2.No_of_locations from V2 INNER JOIN V3 on V2.Dnumber=V3.Dnumber;


