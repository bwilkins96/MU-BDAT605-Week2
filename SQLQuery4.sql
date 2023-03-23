-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns three columns:
InvoiceTotal       From the Invoices table
10%                  10% of the value of InvoiceTotal
Plus 10%           The value of InvoiceTotal plus 10%
(For example, if InvoiceTotal is 100,000, 10% is 10.0000, and Plus 10% is 110.0000.) 
Only return those rows with a balance due greater than 1000 
Sort the result set by InvoiceTotal, with the largest invoice first.
*/

USE AP;

SELECT InvoiceTotal, (InvoiceTotal * 0.1) AS "10%",
	InvoiceTotal + (InvoiceTotal * 0.1) AS "Plus 10%"
FROM Invoices
WHERE InvoiceTotal > 1000
ORDER BY InvoiceTotal DESC;