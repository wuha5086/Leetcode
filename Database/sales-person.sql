# Write your MySQL query statement below
SELECT name FROM salesperson 
WHERE sales_id NOT IN 
(SELECT o.sales_id FROM orders AS o 
JOIN company AS c ON o.com_id = c.com_id
WHERE c.name = 'RED');

# Write your MySQL query statement below
SELECT s.name
FROM salesperson s
JOIN company c
LEFT JOIN orders o
ON s.sales_id = o.sales_id AND c.com_id = o.com_id
WHERE c.name = 'RED' AND o.amount IS NULL