-- BDAT 605: Database Principles 

/*
Write a SELECT statement that determines whether the PaymentDate column of the Invoices table has any invalid values. 
To be valid, PaymentDate must be a null value if there's a balance due and a non-null value if there's no balance due. 
Code a compound condition in the WHERE clause that tests for these conditions.
*/

USE AP;

-- Returns invalid PaymentDate columns
SELECT PaymentDate AS InvalidDate, InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue 
FROM Invoices
WHERE (InvoiceTotal - (PaymentTotal + CreditTotal) <= 0 AND PaymentDate IS NULL)
	OR  (InvoiceTotal - (PaymentTotal + CreditTotal) > 0 AND PaymentDate IS NOT NULL)
ORDER BY BalanceDue DESC;

-- Returns valid PaymentDate columns
SELECT PaymentDate AS ValidDate, InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue 
FROM Invoices
WHERE (InvoiceTotal - (PaymentTotal + CreditTotal) <= 0 AND PaymentDate IS NOT NULL)
	OR  (InvoiceTotal - (PaymentTotal + CreditTotal) > 0 AND PaymentDate IS NULL)
ORDER BY BalanceDue DESC;

