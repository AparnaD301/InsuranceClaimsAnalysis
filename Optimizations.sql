--Optimization
--Create indexes on any columns used frequently in WHERE clauses
--or as join keys to improve performance

CREATE INDEX index_claims_claimdate ON Claims(ClaimDate);