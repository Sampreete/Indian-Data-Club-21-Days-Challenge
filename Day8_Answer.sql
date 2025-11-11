SELECT 
  patient_id, 
  UPPER(name) AS name_uppercase, 
  LOWER(service) AS service_lowercase,
  CASE 
    WHEN age >= 65 THEN 'Senior' 
    WHEN age >= 18 THEN 'Adult' 
    ELSE 'Minor' 
  END AS age_category, 
  LENGTH(name) AS name_length
FROM patients
WHERE LENGTH(name) > 10;
