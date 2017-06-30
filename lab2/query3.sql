SELECT DISTINCT h.ApartmentCount, h.color
FROM Houses h, Persons p
WHERE p.Name = 'John Smith'
AND p.HouseID = h.HouseID;
