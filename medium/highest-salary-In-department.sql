-- Problem: Highest Salary In Department
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9897-highest-salary-in-department?code_type=1

-- Solution:

---------------------------------------------------------------1st Approach---------------------------------------------------------------------------------------------------

WITH cte AS (
SELECT
  department,
  MAX(salary) AS max_salary
FROM employee
GROUP BY department
)
SELECT
  e.department,
  e.first_name,
  e.salary
FROM employee AS e
INNER JOIN cte 
ON e.department = cte.department 
AND e.salary = cte.max_salary


-------------------------------------------------------------------2nd Approach------------------------------------------------------------------------------------------------

SELECT
    department,
    first_name,
    salary
FROM employee
WHERE (department, salary) IN (
    SELECT
        department,
        MAX(salary) AS max_salary
    FROM employee
    GROUP BY department
)

