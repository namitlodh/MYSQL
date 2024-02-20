SELECT * FROM emp_info_bckp;

CREATE TABLE employeeslog
(id int,name varchar(50),salary decimal, job varchar(50),phone varchar(50),deptid int,
modifiedby varchar(50),modifiedon date);

select * from employeeslog;

CREATE TRIGGER tr_employee_after_insert
ON emp_info_bckp
AFTER INSERT
AS
	BEGIN
		INSERT INTO employeeslog
		SELECT empId,empName,empSalary,Job,phone,deptId,'Namit',getdate()
		FROM inserted;
	END;

INSERT INTO emp_info_bckp 
values(9,'Anjali',50000,'Designer','5152235445',20)

CREATE TRIGGER tr_employee_after_update
ON emp_info_bckp
AFTER UPDATE
AS
	BEGIN
		INSERT INTO employeeslog
		SELECT empId,empName,empSalary,Job,phone,deptId,'Namit',getdate()
		FROM inserted;
	END;

UPDATE emp_info_bckp set empSalary=60000 where empName='Rahul';

CREATE TRIGGER tr_employee_after_delete
ON emp_info_bckp
AFTER DELETE
AS
	BEGIN
		INSERT INTO employeeslog
		SELECT empId,empName,empSalary,Job,phone,deptId,'Namit',getdate()
		FROM deleted;
	END;

DELETE FROM emp_info_bckp where empName='Anjali';