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