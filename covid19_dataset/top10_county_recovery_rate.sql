CREATE DATABASE covid19;
USE covid19;

-- Top 10 Countries By COVID-19 Recovery Rates
SELECT `Country/Region`, 
       (Recovered / Confirmed) * 100 AS RecoveryRate
FROM country_wise_latest
WHERE Confirmed > 0
ORDER BY RecoveryRate DESC
LIMIT 10;

