CREATE TABLE emp_details(id int,name varchar(10));

select * from emp_details;

ALTER TABLE emp_details ADD salary decimal;

Insert into emp_details values
(1,'Ishwar',25000);

ALTER table emp_details add phone varchar(10) null;

ALTER TABLE emp_details add project_completed int not null DEFAULT 5;

ALTER TABLE emp_details add projectid integer null 
constraint pid_unique_key unique;

INSERT INTO emp_details values
(2,'steve',5000,'3462466245',default,4);

create table company_info(id int);

alter table company_info 
add revenue decimal(10,2) null,
projectid integer constraint projId_pk PRIMARY KEY;

SELECT * FROM company_info;