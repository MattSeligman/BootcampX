/*
    # Large Cohorts
    * Get all cohorts with 18 or more students.
*/
SELECT cohorts.name, COUNT(students.*)
FROM cohorts
JOIN students on students.cohort_id = cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.*) >= 18
ORDER BY COUNT(students.*);

-- assignments (id, name, content, duration, day, chapter)
-- assignment_submissions (id, assignment_id, student_id, submission_date, duration)
-- students (id, name, email, phone, github, start_date, end_date, cohort_id)
-- cohorts (id, name, start_date, end_date)