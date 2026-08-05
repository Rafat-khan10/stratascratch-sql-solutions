-- Problem: Highest Target Under Manager
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9905-highest-target-under-manager?code_type=1

-- Solution:

WITH cte AS (
SELECT
  first_name,
  SUM(target) AS target
FROM salesforce_employees
WHERE manager_id =13
GROUP BY first_name 
),
cte2 AS (
SELECT
  *,
  DENSE_RANK() OVER(ORDER BY target DESC) AS rank
FROM cte
)
SELECT
  first_name,
  target
FROM cte2
WHERE rank=1
