-- Problem: Rush Hour Calls
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2023-rush-hour-calls

-- Solution:

SELECT COUNT(*)
FROM
  (SELECT DISTINCT request_id
   FROM redfin_call_tracking
   WHERE DATE_PART('hour', created_on::TIMESTAMP) BETWEEN 15 AND 18
   GROUP BY request_id
   HAVING COUNT(*) >= 3
  ) AS sq
