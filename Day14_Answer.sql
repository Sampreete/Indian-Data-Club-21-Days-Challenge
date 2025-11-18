SELECT s.staff_id, s.staff_name, s.role, s.service,
COALESCE(SUM(present),0) AS count_of_weeks
FROM staff s
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id
GROUP BY s.staff_id, s.staff_name, s.role, s.service
ORDER BY count_of_weeks DESC;