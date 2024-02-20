SELECT * FROM emp_info_bckp;

CREATE FUNCTION salary(@name as VARCHAR(50))
RETURNS DECIMAL
BEGIN
	DECLARE @sal decimal;
	SELECT @sal = empSalary from emp_info_bckp
	where empName =@name;
	RETURN @sal;
END;

SELECT dbo.salary('Smith');
SELECT dbo.salary('Mike') AS 'Employee Salary';