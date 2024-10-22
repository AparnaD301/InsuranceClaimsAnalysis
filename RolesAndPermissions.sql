--Roles and Permissions
--Create roles:ClaimsAnalyst and ClaimsManager
--'ClaimsAnalyst' role should have read-only access to claims and policies data
--'ClaimsManager' role should have full access to claims data and the ability to update policy information

--Create ClaimsAnalyst role
CREATE ROLE ClaimsAnalyst LOGIN PASSWORD 'password1';

--Create ClaimsManager role
CREATE ROLE ClaimsManager LOGIN PASSWORD 'password2';

--Grant Permissions
GRANT SELECT ON Claims,Policies,PolicyTypes TO ClaimsAnalyst;

GRANT SELECT,INSERT,UPDATE,DELETE ON Claims,Policies,PolicyTypes TO ClaimsManager;