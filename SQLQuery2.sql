-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns four columns from the Invoices table, named Number, Total, Credits, and Balance:
Number        Column alias for the InvoiceNumber column
Total             Column alias for the InvoiceTotal column
Credits          Sum of the PaymentTotal and CreditTotal columns
Balance        InvoiceTotal minus the sum of PaymentTotal and CreditTotal 
*/

USE AP;

SELECT InvoiceNumber AS Number, InvoiceTotal AS Total, 
	PaymentTotal + CreditTotal AS Credits,
	InvoiceTotal - (PaymentTotal + CreditTotal) AS Balance
FROM Invoices;


