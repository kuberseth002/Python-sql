USE covid19;

SELECT `Country/Region` AS Country, AVG(Deaths) AS AvgDailyDeaths
FROM full_grouped
GROUP BY `Country/Region`
ORDER BY AvgDailyDeaths DESC;

SELECT Continent, AVG(TotalDeaths) AS AvgDailyDeaths
FROM worldometer_data
GROUP BY Continent
ORDER BY AvgDailyDeaths DESC;


SHOW COLUMNS FROM worldometer_data;