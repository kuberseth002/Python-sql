USE covid19;

SELECT `Country/Region` AS Country,  
       (TotalCases / Population) AS CaseToPopulationRatio  
FROM worldometer_data  
WHERE Population > 0  
ORDER BY CaseToPopulationRatio DESC  
LIMIT 10;

SHOW COLUMNS FROM worldometer_data;
