-- Problem: Rank Variance Per Country
-- Difficulty: Hard
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2007-rank-variance-per-country?code_type=1

-- Solution:

WITH cte AS (
select 
  u.country,
  EXTRACT(MONTH FROM created_at) AS month,
  SUM(number_of_comments) AS total_comments
from fb_comments_count AS c
INNER JOIN fb_active_users AS u
ON c.user_id=u.user_id
WHERE c.created_at BETWEEN '2019-12-31' AND '2020-01-31'
GROUP BY u.country, month
),
cte2 AS (
SELECT
  *,
  DENSE_RANK() OVER(ORDER BY total_comments DESC) AS country_rank
FROM cte
)
SELECT
 country
FROM cte2
WHERE country_rank=1
