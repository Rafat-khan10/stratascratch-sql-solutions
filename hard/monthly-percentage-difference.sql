-- Problem : Monthly Percentage Difference
-- Difficulty : Hard
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10319-monthly-percentage-difference?code_type=1

-- Solution:
WITH cte AS (
select 
 TO_CHAR(created_at,'YYYY-MM')AS year_month,
 SUM(value) AS current_month_revenue
from sf_transactions
GROUP BY TO_CHAR(created_at,'YYYY-MM')
)
  
SELECT
  year_month,
  (current_month_revenue-
  LAG(current_month_revenue)OVER (ORDER BY year_month ))*100/LAG(current_month_revenue)OVER (ORDER BY year_month )  AS revenue_diff_pct

FROM cte 
