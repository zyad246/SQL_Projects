--Question 6: Are there any relationships between journey purposes and the severity of accidents?
SELECT
    V.JourneyPurpose,
    COUNT(A.Severity) AS TotalAccidents,
    CASE
        WHEN COUNT(A.Severity) <= 1000 THEN 'Low'
        WHEN COUNT(A.Severity) <= 3000 THEN 'Moderate'
        ELSE 'High'
    END AS Level
FROM
    accident A
JOIN
    vehicle V ON A.AccidentIndex = V.AccidentIndex
GROUP BY
    V.[JourneyPurpose]
ORDER BY
    TotalAccidents DESC;