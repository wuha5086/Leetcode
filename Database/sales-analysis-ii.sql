# Write your MySQL query statement below
SELECT 
    buyer_id
FROM 
    ((
    SELECT DISTINCT product_id, buyer_id 
    FROM Sales)s1 
    JOIN Product p1 ON s1.product_id = p1.product_id)
WHERE 
    product_name = "S8"
AND 
    buyer_id NOT IN 
    (SELECT buyer_id 
     FROM Sales s2 
     JOIN Product p2 ON s2.product_id = p2.product_id
     WHERE product_name = 'iPhone');