USE covid19;

SELECT `Country/Region`, 
       (Recovered / Confirmed) * 100 AS RecoveryRate, 
       (Deaths / Confirmed) * 100 AS FatalityRate
FROM country_wise_latest
WHERE Confirmed > 0
ORDER BY `Country/Region`;

-- 2nd way
SELECT `Country/Region` AS Country, 
       (Recovered / Confirmed) * 100 AS RecoveryRate, 
       (Deaths / Confirmed) * 100 AS FatalityRate
FROM country_wise_latest
WHERE Confirmed > 0
ORDER BY Country
LIMIT 1000;

