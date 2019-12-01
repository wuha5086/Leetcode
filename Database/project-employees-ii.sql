# Write your MySQL query statement below
SELECT project_id
FROM project
GROUP BY project_id
HAVING count(project_id) = 
(SELECT count(project_id) as cnt
FROM project 
GROUP BY project_id
ORDER BY count(project_id) DESC
limit 1);