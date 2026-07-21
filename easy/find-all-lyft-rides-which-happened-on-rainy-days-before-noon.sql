-- Problem: Find all Lyft rides which happened on rainy days before noon
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10004-find-all-lyft-rides-which-happened-on-rainy-days-before-noon?code_type=1

-- Solution:
select 
 *
from lyft_rides
WHERE hour < 12 AND weather='rainy' AND travel_distance >=0
ORDER BY index ASC
