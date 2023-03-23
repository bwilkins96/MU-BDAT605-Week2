-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns four columns from the Products table: ProductCode, ProductName, ListPrice, and DiscountPercent. 
Then, run this statement to make sure it works correctly.
Add an ORDER BY clause to this statement that sorts the result set by list price in descending sequence. 
Then, run this statement again to make sure it works correctly. This is a good way to build and test a statement, one clause at a time.
*/

USE MyGuitarShop;

SELECT ProductCode, ProductName, ListPrice, DiscountPercent
FROM Products
ORDER BY ListPrice DESC;