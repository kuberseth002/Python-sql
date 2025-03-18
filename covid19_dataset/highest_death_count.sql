USE covid19;

SELECT `Country/Region` AS Country, Deaths
FROM country_wise_latest
ORDER BY Deaths DESC
LIMIT 10;

SELECT Continent, SUM(TotalDeaths) AS TotalDeaths
FROM worldometer_data
GROUP BY Continent
ORDER BY TotalDeaths DESC;

