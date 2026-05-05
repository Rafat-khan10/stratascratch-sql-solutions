-- Problem: Total Cost Of Orders
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10183-total-cost-of-orders

-- Solution:

SELECT
  c.id,
  c.first_name,
  SUM(o.total_order_cost)
FROM customers AS c
INNER JOIN orders AS o
ON c.id=o.cust_id
GROUP BY c.id, c.first_name
ORDER BY c.first_name ASC
