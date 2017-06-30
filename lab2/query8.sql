SELECT H.HouseAddress, T.ApartmentNumber, P1.SSN, 
       P1.Name AS TenantName, P1.Salary, P2.name AS LandlordName
FROM Houses H, Tenants T, Landlords l, Ownerships O, Persons P1, Persons P2
WHERE T.RentOverdue AND T.HouseID=H.HouseID AND T.LeaseTenantSSN = P1.SSN
      AND T.HouseID = O.HouseID AND O.LandlordID = L.LandlordID 
      AND L.OwnerSSN = P2.SSN;
