-- Problem: Salary Less Than Twice The Average
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2110-salary-less-than-twice-the-average

-- Solution:

WITH cte AS (
SELECT
  me.empl_id,
  me.manager_empl_id,
  de.salary
FROM map_employee_hierarchy AS me
INNER JOIN dim_employee AS de
ON me.empl_id = de.empl_id
),
cte2 AS (
SELECT
  de.empl_id AS manager_id,
  AVG(cte.salary) AS avg_employee_salary
FROM cte 
INNER JOIN dim_employee AS de
ON cte.manager_empl_id = de.empl_id
GROUP BY manager_id
)
SELECT
  de.empl_id AS manager_empl_id,
  de.salary AS manager_salary ,
  cte2.avg_employee_salary
FROM cte2 
INNER JOIN dim_employee AS de
ON cte2.manager_id = de.empl_id
WHERE avg_employee_salary*2 > salary

