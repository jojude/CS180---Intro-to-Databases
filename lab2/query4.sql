SELECT DISTINCT p.Name, p.Salary, t.Rent
FROM Tenants t, Persons p
WHERE p.HouseID = t.HouseID
AND p.salary / 2 < t.Rent;

