CREATE VIEW Home_Landlords AS
	SELECT l.OwnerSSN AS SSN, l.LandlordID AS Id, p.HouseID AS HouseID, 
	p.ApartmentNumber AS ApartmentNumber
	FROM Landlords l, Persons p, Ownerships n 
	WHERE l.OwnerSSN = p.SSN
	AND l.LandlordID = n.LandlordID
	AND p.HouseID = n.HouseID; 
