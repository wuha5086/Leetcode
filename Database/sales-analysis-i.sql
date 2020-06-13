# Write your MySQL query statement below
SELECT
	seller_id
FROM
	Sales
GROUP BY
	seller_id
HAVING
	SUM(price) = (
		SELECT
			SUM(price) AS pr
		FROM
			Sales
		GROUP BY seller_id
		ORDER BY pr DESC
		LIMIT 1
	);

/* Write your T-SQL query statement below */
WITH CTE AS(
		SELECT seller_id, SUM(price) AS totalSales
		FROM Sales
		GROUP BY seller_id
    )
SELECT seller_id
FROM cte
WHERE totalSales = (SELECT MAX(totalSales) FROM cte)




    
    
    