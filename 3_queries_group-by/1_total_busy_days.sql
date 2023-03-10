SELECT day, COUNT(*) AS total_assignments
FROM assignment
GROUP BY day
HAVING COUNT(*) >= 10
ORDER BY day;