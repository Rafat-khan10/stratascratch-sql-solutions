-- Problem: Find all athletes who were older than 40 years when they won either Bronze or Silver medals
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: hhttps://platform.stratascratch.com/coding/9937-find-all-athletes-who-were-older-than-40-years-when-they-won-either-bronze-or-silver-medals?code_type=1

-- Solution:

SELECT
    name
FROM olympics_athletes_events
WHERE age >40  AND
      medal IN ('Bronze','Silver')
