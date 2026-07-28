-- Problem: Customer Order Summary
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2171-customer-order-summary

-- Solution:

select 
  c.customer_id,
  c.customer_name,
  SUM(CASE 
    WHEN o.status ='paid' THEN o.amount
    ELSE 0 
  END ) AS paid_total
FROM online_store_customers AS c
LEFT JOIN online_store_orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,c.customer_name
ORDER BY c.customer_id ASC
