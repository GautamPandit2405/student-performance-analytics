
-- 1. Average marks by subject
SELECT
    subject,
    ROUND(AVG(marks), 2) AS average_marks
FROM student_performance
GROUP BY subject
ORDER BY average_marks DESC;

-- 2. Average marks by student
SELECT
    student_id,
    student_name,
    ROUND(AVG(marks), 2) AS average_marks
FROM student_performance
GROUP BY student_id, student_name
ORDER BY average_marks DESC;

-- 3. Students with attendance below 80%
SELECT DISTINCT
    student_id,
    student_name,
    attendance_pct
FROM student_performance
WHERE attendance_pct < 80
ORDER BY attendance_pct;
