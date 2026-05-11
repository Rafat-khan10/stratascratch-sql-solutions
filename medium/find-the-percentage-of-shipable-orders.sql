-- Problem: Find the percentage of shipable orders
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10090-find-the-percentage-of-shipable-orders

-- Solution:

select 
  COUNT(*)::NUMERIC*100/ (SELECT COUNT(*) FROM orders) AS
  percent_shipable
from orders AS o
LEFT JOIN customers AS c
ON o.cust_id=c.id
WHERE address IS NOT NULL
