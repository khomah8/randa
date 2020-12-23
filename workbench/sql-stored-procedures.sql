-- from https://www.w3schools.com/sql/sql_stored_procedures.asp 
-- define proc 
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30), @PostalCode nvarchar(10)
AS
SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode
GO;

-- then exec with params 
EXEC SelectAllCustomers @City = 'London', @PostalCode = 'WA1 1DP';
