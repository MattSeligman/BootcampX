/*
# Cohort's Total Assignment Duration
    Get the total amount of time that all students from a specific cohort have spent on all assignments.

    * This should work for any cohort but use FEB12 for now.
    * Select only the total amount of time as a single column.
    * You can write as many JOIN statements as you need in a single query.
*/
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';


-- students (id, name, email, phone, github, start_date, end_date, cohort_id)
-- cohorts (id, name, start_date, end_date)
-- assignment_submissions (id, assignment_id, student_id, submission_date, duration)
-- assignments (id, name, content, duration, day, chapter)