BootcampX
---------

This application, called BootcampX, allows our staff to offer more help to students and mentors by providing greater insight into data such as assignment completion and the effectiveness of requests for assistance.

For BootcampX, I wrote all the queries to get data from the database. That means writing a lot of SELECT statements without having to worry about any JavaScript, HTML, or CSS. Once we have all of the queries written, the other devs can connect the backend, front end, and database together to complete the application.

At Lighthouse Labs, we've decided to create a new application to help manage data about students and mentors. The backend and front end development are being completely outsourced to alumni, but the database queries are going to be written by the current students at Lighthouse Labs. That means you.

Purpose
-------
BEWARE: This was published for learning purposes. It is not intended for use in production-grade software.

This project was created and published as part of my learnings at Lighthouse Labs.

Entity Relation Diagram (ERD):
------------------------------
![ERD](https://github.com/MattSeligman/BootcampX/blob/master/docs/BootcampX-ERD.jpg?raw=true)

The Entities
------------

The main entities for this application will be:

*   `students`
*   `cohorts`
*   `assignments`
*   `assignment_submissions`
*   `teachers`
*   `assistance_requests`

We're going to start off simple and just focus on the queries for two entities: `students` and `cohorts`.

A `cohort` will have the following attributes:

*   `id`: A unique identifier
*   `name`: The name of the cohort
*   `start_date`: The cohorts' start date
*   `end_date`: The cohorts' end date

A `student` will have the following attributes:

*   `id`: A unique identifier
*   `name`: The full name of the student
*   `email`: The students' email address
*   `phone`: The students' phone number
*   `github`: The students' github profile url
*   `start_date`: The students' start date of the Bootcamp
*   `end_date`: The students' end date of the Bootcamp
*   `cohort_id`: The id of the cohort that the student is enrolled in
