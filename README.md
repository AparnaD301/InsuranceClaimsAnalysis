# InsuranceClaimsAnalysis using Postgres SQL

Objectives 

1.	Database schema creation for insurance data.
2.	Populating database with sample insurance data.
3.	Analyzing claims data for insights.
4.	Creating index for better performance.
5.	Setting up roles and permissions for database security.

Task Description

1.	Database schema creation
->Define tables: Customers, Policies, Claims and PolicyTypes.
->Include fields such as CustomerID, PolicyID, ClaimID, PolicyTypeID, ClaimAmount, ClaimDate, PolicyStartDate, PolicyEndDate, etc.
2.	Data population
->Insert realistic sample data into each table, ensuring a variety of scenarios are represented, such as different policy types, claim amounts and customer profiles.
3.	Analytical Queries
->Write a query to calculate the total number of claims per policy type.
->Use analytical functions to determine the monthly claim frequency and average claim amount.
->Total Claim amount by Customer
->Average Premium by Policy Type
->Pending Claims Count
->Top 5 States with the Highest Claims
5.	Optimization
->Discuss the creation of indexes on any columns used frequently in WHERE clauses or as join keys to improve performance.
6.	Roles and permissions
->Create roles: ClaimsAnalyst and ClaimsManager
->“ClaimsAnalyst” role should have read-only access to claims and policies data.
->“ClaimsManager” role should have full access to claims data and the ability to update policy information.
