-- Problem: Wine varieties tasted by 'Roger Voss
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10024-wine-varieties-tasted-by-roger-voss

-- Solution:

select 
  DISTINCT variety 
from winemag_p2
WHERE taster_name ='Roger Voss' 
AND region_1 IS NOT NULL
