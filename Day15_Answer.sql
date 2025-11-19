SELECT 
    sw.service, 
    sw.week,
    COUNT(CASE WHEN sw.week = 20 THEN p.patient_id END) AS total_admitted,
    COUNT(CASE WHEN sw.week = 20 AND sw.patients_refused = 1 THEN p.patient_id END) AS total_refused,
    COUNT(CASE WHEN sw.week = 20 AND ss.present = 1 THEN ss.present END) AS staff_present,
    AVG(sw.patient_satisfaction) AS avg_satisfaction,
    COUNT(DISTINCT st.staff_id) AS staff_assigned
FROM services_weekly sw
LEFT JOIN patients p 
    ON sw.service = p.service 
    AND sw.week = 20
LEFT JOIN staff st
    ON sw.service = st.service
LEFT JOIN staff_schedule ss
    ON st.staff_id = ss.staff_id 
    AND ss.week = 20
WHERE sw.week = 20
GROUP BY sw.service, sw.week
ORDER BY total_admitted DESC;
