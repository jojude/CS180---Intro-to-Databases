SELECT DISTINCT p.Name
FROM Houses h, Persons p
WHERE h.HouseAddress = '1730 Alma Street'
AND p.HouseID = h.HouseID;
