# Write your MySQL query statement below
SELECT 
    s.student_id, 
    s.student_name, 
    j.subject_name, 
    COUNT(e.subject_name) AS attended_exams
FROM 
    Students s
    CROSS JOIN Subjects j
    LEFT JOIN Examinations e 
    ON s.student_id = e.student_id AND j.subject_name = e.subject_name
GROUP BY s.student_id, j.subject_name
ORDER BY s.student_id, j.subject_name;



