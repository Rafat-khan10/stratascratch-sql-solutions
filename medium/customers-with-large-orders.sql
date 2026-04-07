-- Problem: Customers with Large Orders
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2172-customers-with-large-orders?code_type=1

-- Solution:

SELECT
  DISTINCT c.customer_id,
  c.customer_name
FROM online_store_customers AS c
INNER JOIN online_store_orders AS o ON c.customer_id = o.customer_id
WHERE amount > 100
ORDER BY c.customer_id ASC
