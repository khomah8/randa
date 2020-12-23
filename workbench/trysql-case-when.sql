-- tryMySQL CASE = thanks to w3schools 

SELECT avg(Quantity), 
case 
	when avg(Quantity) > 30 then 'is greater than 30' 
	else 'is less OR equal 30'
end as "Verdict Text" 
FROM OrderDetails;

/* try@ https://www.w3schools.com/sql/trymysql.asp?filename=trysql_case 
*/ 
