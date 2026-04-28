-- Problem: Workers by Department Since April
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9847-find-the-number-of-workers-by-department

-- Solution:

SELECT
  department,
  COUNT(*) AS num_workers
FROM worker
WHERE joining_date > '2014-04-01'
GROUP BY department
ORDER BY COUNT(*) DESC
