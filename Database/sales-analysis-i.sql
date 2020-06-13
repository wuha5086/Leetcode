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

/* Write your T-SQL query statement below */
WITH CTE AS 
(SELECT t.seller_id,  DENSE_RANK() OVER(ORDER BY SUM(t.price) DESC) AS rank FROM Sales t GROUP BY t.seller_id)
SELECT s.seller_id 
FROM Sales s join CTE c
ON s.seller_id = c.seller_id
WHERE c.rank = 1
GROUP BY s.seller_id;

/* Write your T-SQL query statement below */
with cte as(
select
seller_id,
sum(price) as total
from Sales
group by seller_id
)
, cte1 as(
select
dense_rank() over (order by total desc) rank,
seller_id
from cte
    )
select seller_id from cte1 where rank = 1


    
    
    