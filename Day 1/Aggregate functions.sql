SELECT * FROM employee_info;

Select SUM(empSalary) from employee_info;

Select AVG(empSalary) from employee_info;

Select MAX(empSalary) from employee_info;

Select Min(empSalary) from employee_info;

--Select * from employee_info where max(empSalary);//through error

Select COUNT(empName) from employee_info;

Insert into employee_info (empId,empName,empSalary,deptId)
values(7,'Zack',16000,40);

Select COUNT(job) from employee_info;