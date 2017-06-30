SELECT DISTINCT l.LandlordAddress, p.Name
FROM Landlords l, Persons p
WHERE (l.LandlordID, p.HouseId) IN 
(SELECT o.LandlordID, h.HouseID
FROM Ownerships o, Houses h
WHERE h.ApartmentCount = 1
AND o.HouseID = h.HouseID);
