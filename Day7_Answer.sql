/*Identify services that refused more than 100 patients in total and had an average patient satisfaction below 80. Show service name, total refused, and average satisfaction.*/

select service,
       sum(patients_refused) as total_ref,
       round(avg(patient_satisfaction),2) as Avg_satisfaction
from services_weekly
group by service
having total_refused > 100
   and avg(patient_satisfaction) < 80;
