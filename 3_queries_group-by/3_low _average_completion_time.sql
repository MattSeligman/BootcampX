/*
    Get the students who's average time it takes to complete an assignment is less 
    than the average estimated time it takes to complete an assignment.

* [x] Select the name of the student
* [x] Select the student's average completion time, 
  [x] Select the average suggested completion time | avg(the table)
* [x] ORDER BY average completion time ASC smallest to largest.
* [x] Only get currently enrolled students. (WHERE end_date IS NULL)
* [x] This will require data from students, assignment_submissions, and assignments.
*/

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;