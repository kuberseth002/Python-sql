USE covid19;

SELECT `Country/Region`, Deaths
FROM country_wise_latest
ORDER BY Deaths ASC
LIMIT 10;
