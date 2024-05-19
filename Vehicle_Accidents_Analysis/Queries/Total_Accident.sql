--Question 1: How many accidents have occurred in urban areas versus rural areas?
SELECT
	accident.Area,
	COUNT(accident.accidentIndex) AS 'Total Accident'
FROM 
	accident
GROUP BY 
	accident.Area;