USE covid19;

SELECT Continent, 
SUM(TotalCases) AS TotalCases
FROM worldometer_data
GROUP BY Continent
ORDER BY TotalCases ASC
LIMIT 5;
