CREATE VIEW Overdue_Landlords AS
SELECT p.Name AS Name, t.Rent as Rent
FROM Home_Landlords h, Persons p ,Tenants t
WHERE p.SSN = h.SSN
AND t.LeaseTenantSSN = h.SSN
AND t.RentOverdue = 't';

SELECT *
FROM Overdue_Landlords
WHERE Name IN (SELECT Name
			   FROM Overdue_Landlords
			  GROUP BY Name
			  HAVING COUNT(*) > 1);

DELETE FROM Tenants
	WHERE HouseID = 1000
	AND ApartmentNumber = 2;

DELETE FROM Tenants
	WHERE HouseID = 1100
	AND ApartmentNumber = 2;

SELECT *
FROM Overdue_Landlords
WHERE Name IN (SELECT Name
			   FROM Overdue_Landlords
			  GROUP BY Name
			  HAVING COUNT(*) > 1);
