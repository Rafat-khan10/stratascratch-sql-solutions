-- Problem: Departments With 5 Employees
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9911-departments-with-5-employees?code_type=1

-- Solution:
select 
   department
from employee
GROUP BY department
HAVING COUNT(*) >=5
