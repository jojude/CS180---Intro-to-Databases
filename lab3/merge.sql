UPDATE Tenants t
SET LastRentPaidDate = n.DatePaid, RentOverdue = 'f'
FROM NewRentPayments n
WHERE t.HouseID = n.HouseID
AND t.ApartmentNumber = n.ApartmentNumber
AND t.LeaseTenantSSN = n.LeaseTenantSSN
AND t.Rent = n.Rent;

INSERT INTO Tenants(HouseID,ApartmentNumber,LeaseTenantSSN,LeaseStartDate,LeaseExpirationDate, Rent, LastRentPaidDate, RentOverdue)
	SELECT n.HouseID, n.ApartmentNumber, n.LeaseTenantSSN, CURRENT_DATE,
					NULL, n.Rent, n.DatePaid, 'f'
	FROM NewRentPayments n
	WHERE n.HouseID NOT IN ( SELECT t.HouseID
							FROM Tenants t
							WHERE t.ApartmentNumber = n.ApartmentNumber);
