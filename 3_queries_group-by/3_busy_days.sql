/*
    # Busy Days
    The same query as assignments_per_day, 
    but only return rows where total assignments 
    is greater than or equal to 10.
*/
SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;

-- assignments (id, name, content, duration, day, chapter)