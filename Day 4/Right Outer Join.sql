select * from emp_info_bckp;
select * from department_info;

SELECT empId, empName, empSalary,deptname, deptlocation
from emp_info_bckp RIGHT OUTER JOIN department_info
on emp_info_bckp.deptId = department_info.deptId;

SELECT e.empId, e.empName, e.empSalary,d.deptname, d.deptlocation
from emp_info_bckp e RIGHT OUTER JOIN department_info d
on e.deptId = d.deptId;

SELECT e.empId, e.empName, e.empSalary,d.deptname, d.deptlocation
from department_info d RIGHT OUTER JOIN emp_info_bckp e
on e.deptId = d.deptId;