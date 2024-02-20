USE employeeDB;
GO

ALTER PROCEDURE proc_allemployeeDetails
AS
BEGIN
	SELECT e.empName,e.empSalary,d.deptlocation
	FROM emp_info_bckp e inner join department_info d
	ON e.deptId=d.deptId;
END;
GO

EXECUTE proc_allemployeeDetails;
GO

ALTER PROCEDURE 
proc_allemployeedetailsLocation(@location AS VARCHAR(100))
AS
BEGIN
	SELECT e.empName,e.empSalary,d.deptlocation,d.deptname 
	FROM emp_info_bckp e inner join department_info d
	on e.deptId=d.deptId 
	where deptlocation=@location;
END

EXECUTE proc_allemployeedetailsLocation @location='Mumbai';
GO

EXECUTE proc_allemployeedetailsLocation @location='New York';
GO