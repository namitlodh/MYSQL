EXEC sp_rename 'proc_allemployeeDetails','proc_displayEmployeeDetails';

SELECT * FROM sys.sql_modules;
GO

CREATE PROCEDURE proc_displayEmployeeDetails
AS
BEGIN
	SELECT e.empName,e.empSalary,d.deptlocation
	FROM emp_info_bckp e inner join department_info d
	ON e.deptId=d.deptId;
END;