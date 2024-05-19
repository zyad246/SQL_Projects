--Question 4: Are there any specific weather conditions that contribute to severe accidents?
DECLARE @Severity varchar(100)
SET @Severity = 'Fatal' --Serious, Fatal, Slight

SELECT
    WeatherConditions,
    COUNT(*) AS TotalAccidents
FROM
    accident
WHERE
    Severity = @Severity
GROUP BY
    WeatherConditions
ORDER BY
    TotalAccidents DESC;