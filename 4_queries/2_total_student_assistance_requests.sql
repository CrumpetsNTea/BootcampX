-- select the total assistance requests and the students name
-- from assistance requests
-- joins the students table getting all the info using
-- students.id from the students table 
-- and student_id from assistance requests table

SELECT count(assistance_requests.*) AS total_assistances, students.name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;