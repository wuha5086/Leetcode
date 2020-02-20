SELECT 
    project_id, 
    employee_id 
FROM 
    Project a
    JOIN Employee b USING (employee_id)
    JOIN (SELECT project_id, MAX(experience_years) AS max_years 
          FROM Project JOIN Employee USING (employee_id) 
          GROUP BY project_id) c USING (project_id)
WHERE b.experience_years = c.max_years; 

#Write your MySQL query statement below
SELECT 
    project_id, 
    employee_id 
FROM 
    Project a
    JOIN Employee USING (employee_id)
WHERE 
    experience_years = (SELECT MAX(experience_years) FROM Project JOIN Employee USING (employee_id) WHERE project_id = a.project_id);