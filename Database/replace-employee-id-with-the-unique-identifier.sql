# Write your MySQL query statement below
SELECT i.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI i 
ON e.id = i.id
