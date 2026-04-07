-- Problem:Contact Information Completeness
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https:https://platform.stratascratch.com/coding/2169-contact-information-completeness

-- Solution:

SELECT
  COUNT(*)::NUMERIC /
  (SELECT COUNT(*)
   FROM techcorp_workforce) AS null_phone_ratio
FROM techcorp_workforce
WHERE phone_number IS NULL
