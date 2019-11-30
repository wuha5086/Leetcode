# Write your MySQL query statement below
SELECT
		p.product_id,
		ROUND((SUM(u.units*p.price)/SUM(units)),2) average_price 
FROM Prices p , UnitsSold u 
WHERE 
		p.product_id = u.product_id 
		AND u.purchase_date BETWEEN p.start_date AND p.end_date 
GROUP BY p.product_id;
