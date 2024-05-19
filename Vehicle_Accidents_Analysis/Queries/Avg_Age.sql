--Question 3: What is the average age of vehicles involved in accidents based on their type?
SELECT
    VehicleType,
    COUNT(*) AS TotalAccidents,
    ROUND(AVG(CAST(AgeVehicle AS FLOAT)), 2) AS AverageAge
FROM
    vehicle
WHERE
    AgeVehicle IS NOT NULL
GROUP BY
    VehicleType
ORDER BY
    TotalAccidents DESC;