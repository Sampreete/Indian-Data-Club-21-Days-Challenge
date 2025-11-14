SELECT 
    service,
    event,
    COUNT(*) AS occurrences
FROM services_weekly
WHERE event IS NOT NULL 
  AND event <> 'none'
GROUP BY service, event
ORDER BY occurrences DESC;
