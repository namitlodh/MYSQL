CREATE OR ALTER TRIGGER tr_TableRename
ON DATABASE
FOR RENAME
AS
BEGIN
	PRINT 'Table is rename';
END;

sp_rename 'sampletable','sample'

CREATE TABLE ddl_log(
	id int IDENTITY primary key,
	event_data XML,
	performed_by SYSNAME,
	event_type Varchar(50)
	);

CREATE OR ALTER TRIGGER tr_ddlEventTrigger
ON DATABASE
FOR CREATE_TABLE, RENAME, DROP_TABLE
AS
	BEGIN
		INSERT INTO ddl_log(event_data,performed_by,event_type)
		VALUES(EVENTDATA(),USER, EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]','varchar(max)'));
	END;

sp_rename 'sample','sampletable'
CREATE TABLE demo(id int, value varchar(20));
SELECT * FROM ddl_log;
DROP TABLE sampletable;