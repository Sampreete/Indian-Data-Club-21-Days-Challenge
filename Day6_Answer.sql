SELECT
  service,
  SUM(patients_admitted) AS total_admitted,
  SUM(patients_refused) AS total_refused,
  ROUND(SUM(patients_admitted) * 100 / SUM(patients_request), 2) AS admission_rate
FROM 
  services_weekly
GROUP BY 
  service
ORDER BY 
  admission_rate DESC;
