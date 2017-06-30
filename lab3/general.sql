ALTER TABLE Ownerships
	ADD CONSTRAINT property_tax
	CHECK (PropertyTax >= 0);

ALTER TABLE Tenants
	ADD CONSTRAINT rent
	CHECK (Rent > 0);

ALTER TABLE Tenants
	ADD CONSTRAINT lease_expiration
	CHECK (LeaseExpirationDate IS NULL OR 
			(LeaseExpirationDate IS NOT NULL 
			AND LeaseStartDate < LeaseExpirationDate));

ALTER TABLE Tenants
	ADD CONSTRAINT rent_overdue
	CHECK (LastRentPaidDate <> CURRENT_DATE OR
			(LastRentPaidDate = CURRENT_DATE 
			AND RentOverdue = 'f'));
