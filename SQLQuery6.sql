-- BDAT 605: Database Principles 

/*
Modify the solution to exercise 3 to filter for contacts whose last name begins with the letter A, B, C, or E.
*/

USE AP; 

SELECT VendorContactLName + ', ' + VendorContactFName AS "Full Name"
FROM Vendors
WHERE VendorContactLName LIKE '[A-C, E]%'
ORDER BY VendorContactLName, VendorContactFName;