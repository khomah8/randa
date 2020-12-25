-- [ Suppliers ] ~ [ Customers ]
-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_insert_into_select

SELECT Suppliers.supplierName, Customers.CustomerName
FROM Suppliers
INNER JOIN Customers ON Suppliers.supplierName = Customers.CustomerName;
/*
Number of Records: 32
*/ 

-- 2) then do Inserting !smth WRONG 
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

-- 3) resulting comparision 
SELECT Suppliers.Country as supplCountry, Suppliers.City as supplCity, Suppliers.supplierName, Customers.CustomerName, 
Customers.Country as custCountry, Customers.City as custCity, Customers.PostalCode, CustomerID  
FROM Suppliers 
JOIN Customers ON Suppliers.supplierName = Customers.CustomerName ORDER BY CustomerID;
/*
Number of Records: 61
*/

-- 4) new comparision Customers VS Suppliers 
SELECT Suppliers.ContactName as ACN , Customers.ContactName as CCN
FROM Suppliers
JOIN Customers ON Customers.city = Suppliers.city;
