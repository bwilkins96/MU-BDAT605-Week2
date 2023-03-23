-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns these column names and data from the OrderItems table:

ItemID          |	The ItemID column
ItemPrice       |	The ItemPrice column
DiscountAmount  |	The DiscountAmount column
Quantity        |	The Quantity column
PriceTotal      | 	A column that’s calculated by multiplying the item price with the quantity
DiscountTotal   |	A column that’s calculated by multiplying the discount amount with the quantity
ItemTotal       |	A column that’s calculated by subtracting the discount amount from the item price and then multiplying by the quantity

Only return rows where the ItemTotal is greater than 500.
Sort the result set by item total in descending sequence.
*/

USE MyGuitarShop;

SELECT ItemID, ItemPrice, DiscountAmount, Quantity,
	ItemPrice * Quantity AS PriceTotal,
	DiscountAmount * Quantity AS DiscountTotal,
	(ItemPrice - DiscountAmount) * Quantity AS ItemTotal
FROM OrderItems
WHERE (ItemPrice - DiscountAmount) * Quantity > 500
ORDER BY ItemTotal DESC;