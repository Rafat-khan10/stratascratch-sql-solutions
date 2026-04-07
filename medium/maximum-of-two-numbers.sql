-- Problem: Maximum of Two Numbers
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2101-maximum-of-two-numbers?code_type=1

-- Solution:

SELECT 
       n1.number AS number1,
       n2.number AS number2,
       CASE
           WHEN n1.number > n2.number THEN n1.number
           ELSE n2.number
       END AS max_number
FROM deloitte_numbers AS n1
CROSS JOIN deloitte_numbers AS n2
