DROP PROCEDURE IF EXISTS sum;

delimiter ##

CREATE PROCEDURE sum
(
IN x1 int,
IN x2 int,
OUT result int
)
BEGIN
	SET result = x1+x2;
END ##

delimiter ;

SET @res=0;
CALL sum (5,35,@res);
SELECT @res;
