SELECT * FROM emp_info_bckp;

--inline
CREATE FUNCTION getallemployees(@salary DECIMAL)
RETURNS TABLE
AS
RETURN 
	SELECT * FROM emp_info_bckp where empSalary = @salary;

SELECT * FROM dbo.getallemployees(98000);

--multi value
CREATE FUNCTION getemployeesdetails(@id VARCHAR(50))
RETURNS @TABLE Table
(Id int, Name varchar(50), salary decimal, job varchar(50),phone varchar(50),deptid varchar(50))
AS
BEGIN
	INSERT INTO @TABLE
	SELECT * FROM emp_info_bckp where deptId=@id;
	RETURN
END;
SELECT * FROM getemployeesdetails('10');
SELECT * FROM getemployeesdetails('50');
SELECT * FROM getemployeesdetails('30');