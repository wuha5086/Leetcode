# Write your MySQL query statement below
SELECT c.customer_id, c.customer_name
FROM Customers AS c JOIN Orders AS o
ON c.customer_id = o.customer_id
GROUP BY customer_id
HAVING SUM(CASE WHEN product_name = 'A' THEN 1 ELSE 0 END) > 0
AND SUM(CASE WHEN product_name = 'B' THEN 1 ELSE 0 END) > 0
AND SUM(case WHEN product_name = 'C' THEN -1 ELSE 0 END) >= 0;
