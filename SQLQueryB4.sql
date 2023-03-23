-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns these column names and data from the Products table:

ProductName     |	The ProductName column
ListPrice       | 	The ListPrice column
DiscountPercent |	The DiscountPercent column
DiscountAmount  |   A column that's calculated from the previous two columns
DiscountPrice	|   A column that's calculated from the previous three columns

Sort the result set by discount price in descending sequence.
*/

USE MyGuitarShop;

SELECT ProductName, ListPrice, DiscountPercent,
	ListPrice * (DiscountPercent * 0.01) AS DiscountAmount,
	ListPrice - (ListPrice * (DiscountPercent * 0.01)) AS DiscountPrice
FROM Products
ORDER BY DiscountPrice DESC;