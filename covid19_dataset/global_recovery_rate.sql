USE covid19;

SELECT (SUM(Recovered) / SUM(Confirmed)) * 100 AS GlobalRecoveryRate
FROM country_wise_latest
WHERE Confirmed > 0;
