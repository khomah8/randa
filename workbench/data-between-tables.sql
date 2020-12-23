-- select with COPYING into new table 
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

-- more than one table as source 
SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2017
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* SELECT INTO can also be used to create a new, empty table using the schema of another. 
Just add a WHERE clause that causes the query to return no data:
*/ 
SELECT * INTO newtable
FROM oldtable
WHERE 1 = 0;

-- read details on  https://www.w3schools.com/sql/sql_select_into.asp 

/* The INSERT INTO SELECT statement copies data from one table and inserts it into another table.
  - INSERT INTO SELECT requires that data types in source and target tables match
  - The existing records in the target table are unaffected
*/

INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;

-- read on  https://www.w3schools.com/sql/sql_insert_into_select.asp
/*  try on  
  https://www.w3schools.com/sql/trysql.asp?filename=trysql_insert_into_select 
  https://www.w3schools.com/sql/trysql.asp?filename=trysql_insert_into_select2
*/ 
