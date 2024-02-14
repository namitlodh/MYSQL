CREATE TABLE employee_info
(	
	empId INTEGER PRIMARY KEY,
	empName VARCHAR(20) NOT NULL,
	empSalary DECIMAL(10,2) NOT NULL,
	job VARCHAR(20),
	phone INT UNIQUE,
	deptId INTEGER NOT NULL
);

CREATE TABLE department_info
(
	deptId INTEGER not null,
	deptname varchar not null,
	deptlocation varchar(50)
);