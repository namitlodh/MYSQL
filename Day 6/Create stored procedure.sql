USE employeeDB;
GO

CREATE PROCEDURE proc_allemployeeDetails
AS
BEGIN
	SELECT * FROM emp_info_bckp;
END
GO

EXECUTE proc_allemployeeDetails;