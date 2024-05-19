--Question 2: Which day of the week has the highest number of accidents?
SELECT
    Day,
    COUNT(*) AS TotalAccidents
FROM
    accident
GROUP BY
    Day
ORDER BY
    TotalAccidents DESC;