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
    
    
    