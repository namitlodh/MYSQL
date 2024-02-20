USE employeeDB;
GO

CREATE PROCEDURE 
proc_allemployeedetailsLocation(@location AS VARCHAR(100))
AS
BEGIN
	SELECT * FROM emp_info_bckp e inner join department_info d
	on e.deptId=d.deptId where deptlocation=@location;
END
GO

EXECUTE proc_allemployeedetailsLocation @location = 'Mumbai';
EXECUTE proc_allemployeedetailsLocation @location = 'New york';

SELECT * FROM emp_info_bckp e inner join department_info d
on e.deptId=d.deptId where deptlocation='Mumbai';
GO