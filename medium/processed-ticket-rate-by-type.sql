-- Problem: Processed Ticket Rate By Type
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9781-find-the-rate-of-processed-tickets-for-each-type?code_type=1

-- Solution:

select 
  type,
  ROUND(SUM(CASE WHEN processed='TRUE' THEN 1 ELSE 0 END)::NUMERIC
  /COUNT(*),2) AS processed_rate
from facebook_complaints
GROUP BY type 
