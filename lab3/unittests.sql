INSERT INTO Persons
	VALUES ('789235323','John Dark', 1200,1,22700.30);

INSERT INTO Ownerships
	VALUES (200,1200,'01/02/1972',8207.00);

INSERT INTO Tenants
	VALUES (1200,1,782332243,'02/01/2014','05/01/2017',3200.00,'02/01/2017','f');

UPDATE Ownerships
	SET PropertyTax = 5300.21
	WHERE HouseID = 100;

UPDATE Ownerships
	SET PropertyTax = -2300.23
	WHERE HouseID = 100;

UPDATE Tenants
	SET RENT = 2400.00
	WHERE LeaseTenantSSN = 641078001;

UPDATE Tenants
	SET RENT = -300.00
	WHERE LeaseTenantSSN = 641078001;

'works till'
	
UPDATE Tenants
	SET  LeaseExpirationDate = NULL
	WHERE LeaseTenantSSN = 641078001;

UPDATE Tenants
	SET LeaseExpirationDate = '2016/01/05'
	WHERE LeaseStartDate = '2016/02/01';

UPDATE Tenants
	SET RentOverdue = 'f'
	WHERE LastRentPaidDate = CURRENT_DATE;

UPDATE Tenants
	SET RentOverdue = 't'
	WHERE LastRentPaidDate = CURRENT_DATE;

SELECT *
FROM Tenants
WHERE LastRentPaidDate = CURRENT_DATE;
