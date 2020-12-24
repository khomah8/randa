-- [ Suppliers ] ~ [ Customers ]
-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_insert_into_select

SELECT Suppliers.supplierName, Customers.CustomerName
FROM Suppliers
INNER JOIN Customers ON Suppliers.supplierName = Customers.CustomerName;

-- Number of Records: 32

-- then do Inserting 
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;
