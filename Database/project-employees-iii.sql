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

# Write your MySQL query statement below
SELECT 
    p.project_id, 
    e.employee_id 
FROM 
    Project p
    JOIN Employee e 
    ON p.employee_id = e.employee_id
    JOIN (SELECT p1.project_id, MAX(experience_years) AS max_years 
          FROM Project p1 JOIN Employee e1 ON p1.employee_id = e1.employee_id
          GROUP BY p1.project_id) tmp
    ON p.project_id = tmp.project_id
WHERE e.experience_years = tmp.max_years; 