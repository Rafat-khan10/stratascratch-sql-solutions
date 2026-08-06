-- Problem: Order details
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9913-order-details?code_type=1

-- Solution:
SELECT
    c.first_name,
    o.order_date,
    o.order_details,
    o.total_order_cost
FROM customers AS c
INNER JOIN orders AS o
    ON c.id = o.cust_id
WHERE c.first_name IN ('Jill', 'Eva')
ORDER BY o.cust_id ASC


