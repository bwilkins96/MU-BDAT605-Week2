-- BDAT 605: Database Principles 

/*
Modify the solution to exercise 2 to filter for invoices with an InvoiceTotal 
that's greater than or equal to $500 but less than or equal to $10,000.
*/

USE AP;

SELECT InvoiceNumber AS Number, InvoiceTotal AS Total, 
	PaymentTotal + CreditTotal AS Credits,
	InvoiceTotal - (PaymentTotal + CreditTotal) AS Balance
FROM Invoices
WHERE InvoiceTotal >= 500 AND InvoiceTotal <= 10000
ORDER BY InvoiceTotal;