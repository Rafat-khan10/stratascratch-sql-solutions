-- Problem: Employee and Manager Salaries
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9894-employee-and-manager-salaries?code_type=1

-- Solution:

WITH cte AS (
SELECT
  e1.first_name,
  e1.id AS employee_id,
  e1.salary AS employee_salary,
  e2.id AS manager_id,
  e2.salary AS manager_salary
FROM employee AS e1
INNER JOIN employee AS e2
ON e1.manager_id = e2.id
)
SELECT
  first_name,
  employee_salary AS salary
FROM cte 
WHERE employee_salary > manager_salary
