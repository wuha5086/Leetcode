# Write your MySQL query statement below
SELECT
A.query_name,
ROUND(SUM(A.rating / A.position) / COUNT(A.query_name),2) as quality,
ROUND(AVG(A.poor)*100,2) as poor_query_percentage

FROM(
SELECT
query_name,
rating,
position,
CASE WHEN rating < 3 THEN 1 ELSE 0 END AS poor
FROM Queries
) AS A

GROUP BY A.query_name