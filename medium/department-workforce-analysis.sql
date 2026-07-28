-- Problem: Department Workforce Analysis
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2170-department-workforce-analysis?code_type=1

-- Solution:

select 
 department,
 COUNT(DISTINCT id) AS headcount,
 SUM(salary) AS total_payroll,
 AVG(salary) AS avg_salary
from techcorp_workforce
WHERE EXTRACT(YEAR FROM joining_date) >2020
GROUP BY department
HAVING COUNT(DISTINCT id) >=5
