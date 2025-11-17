SELECT 
    p.patient_id, 
    p.name AS patient_name, 
    p.age, 
    p.service,
    COUNT(s.staff_id) AS staff_count
FROM patients p
JOIN staff s 
    ON p.service = s.service
GROUP BY 
    p.patient_id, 
    p.name, 
    p.age, 
    p.service
HAVING 
    COUNT(s.staff_id) > 5
ORDER BY 
    staff_count DESC, 
    patient_name;
