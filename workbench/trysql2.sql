-- select with COPYING into new table 
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

/* SELECT INTO can also be used to create a new, empty table using the schema of another. 
Just add a WHERE clause that causes the query to return no data:
*/ 
SELECT * INTO newtable
FROM oldtable
WHERE 1 = 0;

-- try on https://www.w3schools.com/sql/sql_select_into.asp 
