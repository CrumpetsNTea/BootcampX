-- select the result of the sum function inside the sub-query
-- and name it average_total_duration
-- then we grab this from the sub-query
-- which gives us the total cohort assistance duration
-- which we then average 

SELECT AVG(total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations


