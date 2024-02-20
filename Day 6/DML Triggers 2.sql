select * from employeeslog;
select * from emp_info_bckp;

CREATE OR ALTER TRIGGER tr_employee_allDMLOperatioms
ON emp_info_bckp
AFTER INSERT, UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * FROM inserted) AND NOT EXISTS(SELECT * FROM deleted)
		--insert
		INSERT INTO employeeslog
		SELECT empId,empName,empSalary,job,phone,deptId,'Namit',getdate()
		FROM deleted

	ELSE IF EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted)
		--update
		INSERT INTO employeeslog
		SELECT empId,empName,empSalary,job,phone,deptId,'Namit',getdate()
		FROM deleted

	ELSE IF EXISTS(SELECT * FROM deleted) AND NOT EXISTS(SELECT * FROM inserted)
		--delete
		INSERT INTO employeeslog
		SELECT empId,empName,empSalary,job,phone,deptId,'Namit',getdate()
		FROM deleted

	ELSE 
		BEGIN
			PRINT 'NOTHING CHANGED...'
			RETURN
		END
END

SELECT * FROM emp_info_bckp;
SELECT * FROM employeeslog;
INSERT INTO emp_info_bckp 
values(9,'Priya',55000,'Designer','4524245542',20)

update emp_info_bckp set empSalary=60000 where empName='Priya';
DELETE FROM emp_info_bckp where empName='Priya';