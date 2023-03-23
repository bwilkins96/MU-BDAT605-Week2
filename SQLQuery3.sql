-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns one column from the Vendors table named Full Name. 
Create this column from the VendorContactFName and VendorContactLName columns. 
Format it as follows: last name, comma, first name (for example, "Doe, John"). 
sort the result set by last name, then by first name.
*/

USE AP; 

SELECT VendorContactLName + ', ' + VendorContactFName AS "Full Name"
FROM Vendors
ORDER BY VendorContactLName, VendorContactFName;