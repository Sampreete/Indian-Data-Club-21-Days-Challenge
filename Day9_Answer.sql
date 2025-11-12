SELECT service, ROUND(AVG(departure_date - arrival_date), 0) AS avg_stay_days, COUNT(*) AS total_patients
FROM patients
GROUP BY service
HAVING AVG(departure_date - arrival_date) > 7
ORDER BY avg_stay_days DESC;