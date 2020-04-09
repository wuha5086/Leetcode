# Write your MySQL query statement below
SELECT id, COUNT(id) AS num
FROM
(SELECT requester_id AS id FROM request_accepted
UNION ALL
SELECT accepter_id AS id FROM request_accepted) AS user
GROUP BY id
ORDER BY num DESC
LIMIT 1