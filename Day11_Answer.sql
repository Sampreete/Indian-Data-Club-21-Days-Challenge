SELECT 
    CASE 
        WHEN event IS NOT NULL AND event <> 'none' THEN 'With Event'
        ELSE 'No Event'
    END AS event_status,
    COUNT(week) AS week_count,
    AVG(patient_satisfaction) AS avg_patient_satisfaction,
    AVG(staff_morale) AS avg_staff_morale
FROM services_weekly
GROUP BY 
    CASE 
        WHEN event IS NOT NULL AND event <> 'none' THEN 'With Event'
        ELSE 'No Event'
    END
ORDER BY avg_patient_satisfaction DESC;