-- Problem: Counting Instances in Text
-- Difficulty: Hard
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9814-counting-instances-in-text?code_type=1

-- Solution:

WITH cte AS (
select 
  SUM(CASE
    WHEN contents LIKE '%bull%' THEN 1
    ELSE 0
  END) AS total_bull, 
  SUM(CASE
    WHEN contents LIKE '%bear%' THEN 1
    ELSE 0
  END) AS total_bear 
from google_file_store
)
SELECT
  'bull' AS word ,
  total_bull AS nentry
FROM cte

UNION

SELECT
  'bear' AS word ,
  total_bear AS nentry
FROM cte
