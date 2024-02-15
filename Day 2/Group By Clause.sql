select * from employee_info;

SELECT deptid from employee_info GROUP BY deptId;

SELECT empSalary from employee_info GROUP BY deptId;--through error

SELECT sum(empSalary) from employee_info GROUP BY deptId;

SELECT deptId, sum(empSalary) as 'Total Slaary' from employee_info 
GROUP BY deptId;

SELECT deptId, min(empSalary) as 'minimum Slaary' from employee_info 
GROUP BY deptId;

SELECT deptId, avg(empSalary) as 'average Slaary' from employee_info 
GROUP BY deptId;

SELECT deptId, round(avg(empSalary),2) as 'average Slaary' from employee_info 
GROUP BY deptId;

SELECT deptId, max(empSalary) as 'miximum Slaary' from employee_info 
GROUP BY deptId;