-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns one column from the Customers table named FullName that joins the LastName and FirstName columns.
Format this column with the last name, a comma, a space, and the first name like this:
Doe, John
Sort the result set by last name in ascending sequence.
Return only the contacts whose last name begins with letters from M to Z.
*/

USE MyGuitarShop;

SELECT LastName + ', ' + FirstName AS FullName
FROM Customers
WHERE LastName LIKE '[M-Z]%'
ORDER BY LastName;