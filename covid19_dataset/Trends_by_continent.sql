USE covid19;

SELECT Continent, 
SUM(TotalCases) AS TotalCases, 
SUM(TotalDeaths) AS TotalDeaths,
SUM(TotalRecovered) AS TotalRecovered
FROM worldometer_data
GROUP BY Continent
ORDER BY TotalCases DESC;
