use employeeDB;

SELECT * FROM emp_info_bckp;

BEGIN
	WHILE (SELECT MIN(empSalary) from emp_info_bckp)<80000
	BEGIN 
		UPDATE emp_info_bckp SET empSalary=empSalary+10000;
		PRINT 'ALL salaries are updates';

		SELECT * FROM emp_info_bckp;
		IF (SELECT MIN(empSalary) from emp_info_bckp) >= 80000
		PRINT 'Min. Salary is greater or equak to 50000';
		BREAK;
	END
END