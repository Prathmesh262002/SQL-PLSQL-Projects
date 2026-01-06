-- Total Marks
SELECT s.name, SUM(m.marks) AS total
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.name;

-- Highest Marks
SELECT s.name, MAX(m.marks) AS highest
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.name;