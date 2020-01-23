# Write your MySQL query statement below
SELECT e1.employee_id, COUNT(e1.team_id) AS team_size 
FROM Employee e1
JOIN Employee e2
ON e1.team_id = e2.team_id
GROUP BY e1.employee_id

# Window Function
SELECT employee_id,
COUNT(employee_id) OVER (PARTITION BY team_id) team_size
FROM EMPLOYEE