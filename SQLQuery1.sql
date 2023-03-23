-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns three columns from the Vendors table: VendorContactLName, and VendorName. 
Sort the result set by last name, then by first name.
*/

USE AP;

SELECT VendorContactFName, VendorContactLName, VendorName
FROM Vendors
ORDER BY VendorContactLName, VendorContactFName;