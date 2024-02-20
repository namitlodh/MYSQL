CREATE OR ALTER TRIGGER tr_onTable_Create
ON DATABASE
FOR CREATE_TABLE,DROP_TABLE
AS 
BEGIN
	PRINT 'New table is created OR dropped successfully';
END

CREATE TABLE sampletable (id int, name varchar(50));
DROP TABLE sampletable;