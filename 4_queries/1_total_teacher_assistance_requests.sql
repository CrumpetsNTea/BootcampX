-- So I need to get the name of the teacher using the
-- teacher_id from assistance assistance_requests and 
-- then add the total number of assistances where the 
-- teacher_id is equal to the name of the teacher id
-- of the teachers name passed IN

-- So first we select the total count of assistance requests 
-- and teachers.name
-- FROM the assistance requests TABLE
-- JOIN the two tables - joining on teachers
-- where the teachers.id from the teachers TABLE
-- matches the teacher_id from the assistance requests TABLE
-- This gives us all of the info we need to be able to access
-- from the teachers table through
-- teachers.id and matching teacher_id
-- then we are able to the requested input name
-- group by teachers.name

SELECT count(assistance_requests.*) AS total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;