-- Problem: Reviews of Categories
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10049-reviews-of-categories?code_type=1

-- Solution:

SELECT 
  STRING_TO_TABLE(categories,';') AS category,
  SUM(review_count) AS review_cnt
from yelp_business
GROUP BY category
ORDER BY review_cnt DESC
