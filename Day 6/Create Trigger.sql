SELECT * FROM emp_info_bckp;

CREATE TRIGGER tr_message
ON emp_info_bckp
AFTER INSERT
AS
	BEGIN
		PRINT 'Welcome to our company';
	END;

INSERT INTO emp_info_bckp 
values(8, 'Rahul',65000,'Tester','5153132523',50);