-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns these column names and data from the Products table:

ProductName |	The ProductName column
ListPrice   | 	The ListPrice column
DateAdded   |	The DateAdded column

Return only the rows with a list price that�s greater than 500 and less than 2000.
Sort the result set in descending sequence by the DateAdded column.
*/

USE MyGuitarShop;

SELECT ProductName, ListPrice, DateAdded
FROM Products
WHERE ListPrice > 500 AND ListPrice < 2000
ORDER BY DateAdded DESC;