use employeeDB;
GO
SELECT * FROM emp_info_bckp;
GO

BEGIN 
     DECLARE @name VARCHAR(50), @salary INTEGER, @Deptid VARCHAR(10) ='40';
	 SELECT @name = empName, @salary= empSalary FROM emp_info_bckp
	 where deptId=@Deptid;
	 SELECT @name 'Name',@salary 'Salary';
END
GO

BEGIN 
     DECLARE @name VARCHAR(50), @salary INTEGER, @Deptid VARCHAR(10) ='40';
	 SELECT @name = empName, @salary= empSalary FROM emp_info_bckp
	 where deptId=@Deptid;
	 SELECT @name 'Name',@salary 'Salary';

	 BEGIN
	      PRINT 'Department ID:' + @Deptid;
	 END
END
GO