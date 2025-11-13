SELECT 
	UPPER(service) AS service,
    SUM(patients_admitted) AS total_admitted,
    ROUND(AVG(patient_satisfaction),2) AS avg_satisfaction_score,
    CASE 
		WHEN AVG(patient_satisfaction) >= 85 THEN 'Excellent'
        WHEN AVG(patient_satisfaction) >= 75 THEN 'Good'
        WHEN AVG(patient_satisfaction) >= 65 THEN 'Fair'
        ELSE 'Need Improvement'
	END AS Service_Performance
FROM services_weekly
GROUP BY service
ORDER BY AVG(patient_satisfaction) DESC;