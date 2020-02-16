# Write your MySQL query statement below
SELECT s.id, s.name
FROM Students s
WHERE s.department_id NOT IN(
SELECT d.id
FROM Departments d);

# LEFT JOIN
# Write your MySQL query statement below
SELECT s.id, s.name
FROM Students s
LEFT JOIN Departments d
ON s.department_id = d.id
WHERE d.id IS NULL;