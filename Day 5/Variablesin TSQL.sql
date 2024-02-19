Use SAMPLE_DB;

DECLARE @name VARCHAR(50), @age INT;
SET @name ='Namit';
SELECT @name,@age;

DECLARE @name VARCHAR(50), @age INT,@salary DECIMAL(7,2)=45000;
SELECT @name ='Namit Lodh',@age =25;
SELECT @name as 'Name',@age as 'Age',@salary AS 'Salary';

DECLARE @number INT =100;
SET @number+=50;
SELECT @number as 'Number';

SET @number-=50;
SELECT @number as 'Number';

SET @number*=50;
SELECT @number as 'Number';

SELECT * FROM EMP_DETAILS;

DECLARE @name VARCHAR(50), @salary DECIMAL(7,2);
SELECT @name = empName, @salary=empSalary FROM EMP_DETAILS;
SELECT @name AS 'Name', @salary as 'Salary';