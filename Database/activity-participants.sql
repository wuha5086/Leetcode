# Write your MySQL query statement below
SELECT activity
FROM Friends
GROUP BY activity
HAVING COUNT(id) NOT IN
(
    SELECT MAX(cnt) as cnt
    FROM (SELECT activity, COUNT(id) AS cnt
          FROM friends
          GROUP BY activity) tmp1
    UNION
    SELECT MIN(cnt) AS cnt
    FROM (SELECT activity, COUNT(id) AS cnt
          FROM friends
          GROUP BY activity) tmp2
);


/* Write your T-SQL query statement below */
WITH cte AS
(
SELECT activity, COUNT(id) AS num
FROM Friends
GROUP BY activity
)
SELECT activity
FROM cte
WHERE num NOT IN (SELECT MAX(num) FROM cte)
AND num NOT IN (SELECT MIN(num) FROM cte)