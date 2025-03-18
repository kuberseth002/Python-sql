USE covid19;

SELECT w.`Country/Region` AS Country, 
       (c.Confirmed / w.Population) * 100 AS InfectionRate
FROM country_wise_latest c
JOIN worldometer_data w ON c.`Country/Region` = w.`Country/Region`
WHERE w.Population > 0
ORDER BY InfectionRate DESC;

SHOW COLUMNS FROM worldometer_data;


SELECT (SUM(TotalCases) / SUM(Population)) * 100 AS GlobalInfectionRate
FROM worldometer_data
WHERE Population > 0;

