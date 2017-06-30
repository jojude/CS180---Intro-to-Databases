SELECT DISTINCT p.Name AS TenantName, p2.Name AS LandlordName, p.SSN, p.Salary,
		h.HouseAddress, t.ApartmentNumber, t.RentOverdue
FROM Persons p, Persons p2, Houses h, Tenants t
WHERE t.RentOverdue = TRUE
AND t.LeaseTenantSSN = p.SSN
AND p.HouseId = h.HouseID
AND p2.SSN IN ( SELECT l.OwnerSSN
		FROM Landlords l, Ownerships o
		WHERE h.HouseID = o.HouseID
		AND o.LandlordID = l.LandlordID);

SELECT DISTINCT p.Name AS TenantName
FROM Persons p, Tenants t
WHERE t.RentOverdue = TRUE
AND p.SSN = t.LeaseTenantSSN;
