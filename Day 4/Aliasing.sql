use employeeDB;
select * from emp_info_bckp;

SELECT empSalary from emp_info_bckp;

SELECT empSalary AS 'Employee Salary' from emp_info_bckp;

SELECT empSalary 'Employee Salary' from emp_info_bckp;

SELECT empname AS NAME FROM emp_info_bckp;

SELECT empId as 'EMPLOYEE ID', empname AS 'NAME', empSalary AS 'Salary'
, deptId as 'DEPARTEMENT ID' from emp_info_bckp;