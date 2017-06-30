SELECT P.name 
FROM Persons P, Tenants T
WHERE P.SSN = T.LeaseTenantSSN AND 2.0 * T.Rent > P.Salary;
