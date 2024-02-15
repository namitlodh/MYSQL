SELECT * FROM employee_info;

SELECT  deptId, sum(empSalary) from employee_info
group by deptId;

SELECT  deptId, sum(empSalary) from employee_info
group by deptId having deptId=20;

SELECT  deptId, sum(empSalary) from employee_info
where deptId=20 group by deptId;

--through errorSELECT  deptId, sum(empSalary) from employee_info group by deptId where deptId=20;

SELECT  deptId, sum(empSalary) from employee_info
group by deptId having sum(empSalary)>30000;

SELECT  deptId, sum(empSalary) from employee_info
group by deptId having sum(empSalary) between 20000 and 50000;