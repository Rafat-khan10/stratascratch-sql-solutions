-- Problem: Duplicate HR Department Employees
-- Difficulty: Medium
-- Source: StrataScratch
-- Link:https://platform.stratascratch.com/coding/9858-find-employees-in-the-hr-department-and-output-the-result-with-one-duplicate?code_type=1

-- Solution:

select 
  first_name,
  department
from worker
WHERE (department) IN(
      select
      department
      FROM worker
      WHERE department='HR'
      )
      
UNION ALL 

select 
  first_name,
  department
from worker
WHERE (department) IN(
      select
      department
      FROM worker
      WHERE department='HR'
      )  
