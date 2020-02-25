# Write your MySQL query statement below
SELECT player_id,
       MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;

/* Write your T-SQL query statement below */
# Time out
SELECT DISTINCT(player_id), MIN(event_date)
OVER(PARTITION BY player_id) AS first_login
FROM Activity

/* Write your T-SQL query statement below */
SELECT player_id, event_date as first_login
FROM(SELECT player_id, event_date,
    RANK() OVER(PARTITION BY player_id ORDER BY event_date) AS date_rank
    FROM Activity
    ) temp
WHERE date_rank = 1

