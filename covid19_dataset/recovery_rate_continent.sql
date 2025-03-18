USE covid19;

SELECT Continent, 
       (SUM(TotalRecovered) / SUM(TotalCases)) * 100 AS RecoveryRate
FROM worldometer_data
WHERE TotalCases > 0
GROUP BY Continent
ORDER BY RecoveryRate DESC;
