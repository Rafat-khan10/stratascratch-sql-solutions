-- Problem: Workers With The Highest Salaries
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries

-- Solution:

WITH cte AS (
SELECT
 t.worker_title AS title,
 MAX(w.salary) AS max_salary
FROM worker AS w
INNER JOIN title AS t
ON w.worker_id = t.worker_ref_id
GROUP BY t.worker_title
),

cte2 AS (
SELECT
  title,
  max_salary,
  DENSE_RANK() OVER(ORDER BY max_salary DESC) AS rank
FROM cte
)

SELECT
 title
FROM cte2
WHERE rank=1
