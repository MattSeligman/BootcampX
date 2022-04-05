/*
# Get the total amount of time that a student has spent on all assignments.
    * This should work for any student but use 'Ibrahim Schimmel' for now.
    * Select only the total amount of time as a single column.
*/
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

-- students (id, name, email, phone, github, start_date, end_date, cohort_id)
-- assignment_submissions (id, assignment_id, student_id, submission_date, duration)
-- assignments (id, name, content, duration, day, chapter)