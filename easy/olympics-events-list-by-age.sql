-- Problem: Olympics Events List By Age
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9943-winter-olympics-events-list-by-height?code_type=1

-- Solution:

select 
  MIN(age) AS lowest_age,
  AVG(age) AS mean_age,
  MAX(age) AS highest_age
from olympics_athletes_events
