CREATE SCHEMA lab1;

CREATE TABLE Persons(
	SSN INTEGER,
	Name CHAR(30),
	HouseId INTEGER,
	ApartmentNumber INTEGER,
	Salary DECIMAL(7,2),

	PRIMARY KEY(SSN)
);

CREATE TABLE Houses(
	HouseID INTEGER,
	HouseAddress VARCHAR(40),
	ApartmentCount INTEGER,
	Color VARCHAR(40),

	PRIMARY KEY(HouseID)
);

CREATE TABLE Landlords(
	LandlordID INTEGER,
	OwnerSSN INTEGER,
	LandlordAddress VARCHAR(40),

	PRIMARY KEY(LandlordID)
);

CREATE TABLE Ownerships(
	LandlordID INTEGER,
	HouseID INTEGER,
	PurchaseDate DATE,
	PropertyTax DECIMAL(7,2),

	PRIMARY KEY(LandlordID, HouseID)
);

CREATE TABLE Tenants(
	HouseID INTEGER,
	ApartmentNumber INTEGER,
	LeaseTenantSSN INTEGER,
	LeaseStartDate DATE,
	LeaseExpirationDate DATE,
	Rent DECIMAL(7,2),
	LastRentPaidDate DATE,
	RentOverdue BOOLEAN,

	PRIMARY KEY(HouseID, ApartmentNumber)
);

