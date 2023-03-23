-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns these columns from the Orders table:

OrderID   |	 The OrderID column
OrderDate |	 The OrderDate column
ShipDate  |	 The ShipDate column

Return only the rows where the ShipDate column contains a null value.
*/

USE MyGuitarShop;

SELECT OrderID, OrderDate, ShipDate
FROM Orders
WHERE ShipDate IS NULL;