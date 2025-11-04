SELECT patient_id, name, age, satisfaction
FROM patients
WHERE service='surgery' AND satisfaction <70