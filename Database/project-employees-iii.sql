# Write your MySQL query statement below
SELECT p.project_id, e.employee_id
FROM Project p
JOIN Employee e
ON p.employee_id = e.employee_id
WHERE e.experience_years =
(SELECT MAX(e1.experience_years) as exp
FROM Project p1
JOIN Employee e1
ON p1.employee_id = e1.employee_id
WHERE p.project_id = p1.project_id)