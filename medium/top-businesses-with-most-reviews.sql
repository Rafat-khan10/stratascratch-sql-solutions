-- Problem: Top Businesses With Most Reviews
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10048-top-businesses-with-most-reviews?code_type=1

-- Solution:

SELECT
  name,
  SUM(review_count) AS review_count
FROM yelp_business
GROUP BY name
ORDER BY review_count DESC
LIMIT 5
