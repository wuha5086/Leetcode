# Write your MySQL query statement below
SELECT tmp.visited_on, 
       SUM(c.amount) AS amount,
       ROUND(SUM(c.amount)/COUNT(DISTINCT c.visited_on), 2) AS average_amount
FROM (SELECT DISTINCT visited_on FROM customer) tmp, 
      Customer c
WHERE DATEDIFF(tmp.visited_on, c.visited_on) between 0 and 6
GROUP BY tmp.visited_on 
HAVING DATEDIFF(tmp.visited_on, MIN(c.visited_on))=6
ORDER BY visited_on;