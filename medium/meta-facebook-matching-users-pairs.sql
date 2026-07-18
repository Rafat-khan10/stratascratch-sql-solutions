-- Problem: Meta/Facebook Matching Users Pairs
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10085-facebook-matching-users-pairs?code_type=1

-- Solution:

select 
   e1.id AS employee_1,
   e2.id AS employee_2
from facebook_employees AS e1
INNER JOIN facebook_employees AS e2
ON  e1.location = e2.location
    AND e1.age!=e2.age 
    AND e1.gender = e2.gender
    AND e1.is_senior !=e2.is_senior 
