-- BDAT 605: Database Principles 

/*
Write a SELECT statement without a FROM clause that creates a row with these columns:

Price     |	 100 (dollars)
TaxRate   |	 .07 (7 percent)
TaxAmount |	 The price multiplied by the tax
Total     |	 The price plus tax

To calculate the fourth column, add the expressions you used for the first and third columns.
*/

SELECT 100 AS Price, .07 AS TaxRate,
	100 * .07 AS TaxAmount, 100 + (100 * .07) AS Total;