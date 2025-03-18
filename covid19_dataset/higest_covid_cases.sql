USE covid19;

SELECT `Country/Region`, Confirmed
FROM country_wise_latest
ORDER BY Confirmed DESC
LIMIT 10;
