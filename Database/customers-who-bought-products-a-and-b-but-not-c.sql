# Write your MySQL query statement below
SELECT c.customer_id, c.customer_name
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING SUM(CASE WHEN o.product_name = 'A' THEN 1 ELSE 0 END) > 0 AND
SUM(CASE WHEN o.product_name = 'B' THEN 1 ELSE 0 END) > 0 AND
SUM(CASE WHEN o.product_name = 'C' THEN -1 ELSE 0 END) = 0;
