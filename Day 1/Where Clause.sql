SELECT * FROM employee_info;

Select * from employee_info 
where deptId=10;

Select * from employee_info 
where job='CEO';

Select empName, empSalary from employee_info 
where job='CEO';

Update employee_info set empSalary=empSalary+5000
where deptId=10;

Delete from employee_info
where deptId=40;