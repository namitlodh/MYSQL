CREATE TABLE flightPassengers
(
	flightid INT IDENTITY PRIMARY KEY,
	firstname VARCHAR(50) NOT NULL,
	flightcode VARCHAR(50) NOT NULL,
	flightdate DATE NOT NULL,
	seat VARCHAR(5)
	);

INSERT INTO flightPassengers (firstname,flightcode,flightdate,seat)
values ('SMITH','SQL2022',GETDATE(),'7F'),
('ADAM','SQL2022',GETDATE(),'20A'),
('MIKE','SQL2022',GETDATE(),'4B');

CREATE TABLE checkin
(
	firstname VARCHAR(50) NOT NULL,
	flightcode VARCHAR(50) NOT NULL,
	flightdate DATE NOT NULL,
	seat VARCHAR(5)
	);

INSERT INTO checkin (firstname,flightcode,flightdate,seat)
values ('SMITH','SQL2022',GETDATE(),'7F'),
('ADAM','SQL2022',GETDATE(),'2D'),
('MIKE','SQL2022',GETDATE(),'17A');

SELECT * FROM flightPassengers
SELECT * FROM checkin
GO

MERGE flightPassengers F
USING checkin C
ON C.firstname=F.firstname
AND C.flightcode=F.flightcode
AND C.flightdate=F.flightdate
WHEN MATCHED
	THEN UPDATE SET F.seat=C.seat
WHEN NOT MATCHED BY TARGET
	THEN INSERT (firstname,flightcode,flightdate,seat)
	VALUES(firstname,flightcode,flightdate,seat)
WHEN NOT MATCHED BY SOURCE
	THEN DELETE;