USE covid19;

SELECT `Country/Region` AS Country, 
       (Deaths / Confirmed) * 100 AS DeathPercentage
FROM country_wise_latest
WHERE Confirmed > 0
ORDER BY DeathPercentage DESC;

SELECT 
    (SUM(Deaths) / SUM(Confirmed)) * 100 AS GlobalDeathPercentage
FROM country_wise_latest
WHERE Confirmed > 0;
