use employeeDB;

BEGIN
	DECLARE @salary DECIMAL;
	SELECT @salary = AVG(empSalary) from emp_info_bckp;
	SELECT @salary as 'Avg.Salary';

	IF @salary>25000
		BEGIN 
			PRINT 'Avg Salary is greater than 25000';
		END
END
GO

BEGIN
	DECLARE @salary DECIMAL;
	SELECT @salary = AVG(empSalary) from emp_info_bckp;
	SELECT @salary as 'Avg.Salary';

	IF @salary>45000
		BEGIN 
			PRINT 'Avg Salary is greater than 45000';
		END
END
GO

BEGIN
	DECLARE @salary DECIMAL;
	SELECT @salary = AVG(empSalary) from emp_info_bckp;
	SELECT @salary as 'Avg.Salary';

	IF @salary>25000
		BEGIN 
			PRINT 'Avg Salary is greater than 25000';
		END
	ELSE
		BEGIN
			PRINT 'Avg salary is less than 25000';
		END
END
GO

BEGIN
	DECLARE @salary DECIMAL;
	SELECT @salary = AVG(empSalary) from emp_info_bckp;
	SELECT @salary as 'Avg.Salary';

	IF @salary>85000
		BEGIN 
			PRINT 'Avg Salary is greater than 85000';
		END
	ELSE
		BEGIN
			PRINT 'Avg salary is less than 85000';
		END
END
GO