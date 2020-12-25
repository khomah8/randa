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
--string does works too as: FROM [Suppliers] 
JOIN Customers ON Suppliers.supplierName = Customers.CustomerName ORDER BY CustomerID;
/*
Number of Records: 61
*/

-- 4) new comparision of updated Customers VS Suppliers 
SELECT Suppliers.ContactName as ACN , Customers.ContactName as CCN
FROM Suppliers
JOIN Customers ON Customers.city = Suppliers.city;
/*
may be groupped by Country too 
*/

-- 5) possibly carefully use with strong sure in correctness of WHERE condition(s) 
DELETE FROM table_name WHERE condition;
/*
Note:  Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. 
The WHERE clause specifies which record(s) should be deleted. 
  If you omit the WHERE clause, all records in the table will be deleted !!
*/
