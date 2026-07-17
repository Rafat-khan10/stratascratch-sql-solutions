-- Problem: Find all possible varieties which occur in either of the winemag datasets
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10025-find-all-possible-varieties-which-occur-in-either-of-the-winemag-datasets?code_type=1

-- Solution:

WITH cte AS (
select 
   variety
from winemag_p1 
WHERE variety IS NOT NULL
UNION
select 
   variety
from winemag_p2 
WHERE variety IS NOT NULL
)
SELECT
  *
FROM cte 
ORDER BY variety ASC
