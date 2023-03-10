SELECT students.name AS student,
AVG(assignment_submissions.duration) AS average_assignment_duration,
AVG(assignment.duration) AS average_estimated_duration
FROM assignments 
JOIN assignment_submissions ON assignment_id = assignments_id
JOIN students ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;
