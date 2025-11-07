SELECT COUNT(patients_admitted) AS total_patients_admitted,
COUNT(patients_refused) AS total_patients_refused,
ROUND(AVG(patient_satisfaction), 2) AS avg_satisfaction
FROM services_weekly;