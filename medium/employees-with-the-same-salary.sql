-- Problem: Employees With the Same Salary
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9856-find-employees-with-the-same-salary

-- Solution:
SELECT
   worker_id,
   first_name,
   salary
FROM worker
WHERE salary IN(
      select 
        salary
      from worker
      GROUP BY salary
      HAVING COUNT(*) = 2 )
ORDER BY salary DESC
