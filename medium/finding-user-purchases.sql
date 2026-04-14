-- Problem: Finding User Purchases
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10322-finding-user-purchases

-- Solution:

SELECT
 DISTINCT user_id
FROM (
     SELECT
      user_id,
      created_at,
      MIN(created_at) OVER(PARTITION BY user_id ) AS first_purchase
     FROM amazon_transactions
     ) t
WHERE created_at > first_purchase AND
created_at <= first_purchase + INTERVAL '7 days'
