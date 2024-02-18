select * from emp_info_bckp;
select * from department_info;
--Display name, salary of employee whose salary is greater than tina's salary--/

select empName, empSalary from emp_info_bckp
where empSalary >(select empSalary from emp_info_bckp where empName='Tina');

--Display name, salary of employee whose salary is greater than adam's salary--/
-- and deptno same as adam's deptno
select empName, empSalary from emp_info_bckp
where empSalary >(select empSalary from emp_info_bckp where empName='Adam')
AND deptId = (select deptId from emp_info_bckp where empName='Adam');

select empName,empSalary from emp_info_bckp 
where deptid =(select deptid from department_info where deptlocation='new york')