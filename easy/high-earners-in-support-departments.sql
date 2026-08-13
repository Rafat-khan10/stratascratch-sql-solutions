-- Problem: High Earners in Support Departments
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2167-high-earners-in-support-departments?code_type=1

-- Solution:

select 
 first_name,
 last_name,
 department,
 salary
from techcorp_workforce
WHERE department IN ('HR','Admin') AND
 salary > 80000
