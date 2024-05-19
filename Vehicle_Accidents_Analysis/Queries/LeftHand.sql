--Question 5: Do accidents often involve impacts on the left-hand side of vehicles?
SELECT 
	LeftHand, 
	COUNT(AccidentIndex) AS 'Total Accident'
FROM 
	vehicle
GROUP BY 
	LeftHand
HAVING
	LeftHand IS NOT NULL