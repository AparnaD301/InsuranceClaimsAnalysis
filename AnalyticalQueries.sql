--Analytical Queries for Insurance Claims

--Write a query to calculate the total number of claims per policy type.
--Use analytical functions to determine the monthly claim frequency and average claim amount.
--Total Claim amount by Customer
--Average Premium by Policy Type
--Pending Claims Count
--Top 5 States with the Highest Claims

--Write a query to calculate the total number of claims per policy type
SELECT 
pt.PolicyTypeName,
count(c.ClaimID) as TotalClaims
FROM
Claims c
JOIN
Policies p ON c.PolicyID=p.PolicyID
JOIN 
PolicyTypes pt ON p.PolicyTypeID=pt.PolicyTypeID
GROUP BY
pt.PolicyTypeName
ORDER BY
TotalClaims DESC;

--Use analytical functions to determine the yearly claim frequency and average claim amount
SELECT
DATE_TRUNC('year',ClaimDate) AS ClaimYear,
COUNT(*) AS ClaimFrequency,
AVG(ClaimAmount) AS AverageClaimAmount
FROM
Claims
GROUP BY 
ClaimYear
ORDER BY
ClaimYear;

--Total Claim amount by Customer
SELECT 
CONCAT(cu.FirstName, ' ', cu.LastName) AS CustomerName, 
SUM(c.ClaimAmount) AS TotalClaimAmount
FROM 
Claims c
JOIN 
Policies p ON c.PolicyID = p.PolicyID
JOIN 
Customers cu ON p.CustomerID = cu.CustomerID
GROUP BY 
CustomerName
ORDER BY 
TotalClaimAmount DESC;

--Average Premium by Policy Type
SELECT 
pt.PolicyTypeName, 
AVG(p.Premium) AS AveragePremium
FROM 
Policies p
JOIN 
PolicyTypes pt ON p.PolicyTypeID = pt.PolicyTypeID
GROUP BY 
pt.PolicyTypeName
ORDER BY
AveragePremium DESC;

--Pending Claims Count
SELECT 
COUNT(ClaimID) AS PendingClaims,
ClaimStatus
FROM 
Claims
GROUP BY 
ClaimStatus
HAVING
ClaimStatus = 'Pending';

--Top 5 States with the Highest Claims
SELECT 
cu.State, 
COUNT(cl.ClaimID) AS TotalClaims
FROM 
Claims cl
JOIN 
Policies p ON cl.PolicyID = p.PolicyID
JOIN 
Customers cu ON p.CustomerID = cu.CustomerID
GROUP BY 
cu.State
ORDER BY 
TotalClaims DESC
LIMIT 5;



