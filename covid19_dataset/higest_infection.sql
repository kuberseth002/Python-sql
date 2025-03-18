USE covid19;

SELECT `Country/Region`, 
       (TotalCases / Population) * 100 AS InfectionRate
FROM worldometer_data
WHERE Population > 0
ORDER BY InfectionRate DESC
LIMIT 10;
