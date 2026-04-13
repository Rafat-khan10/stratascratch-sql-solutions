-- Problem: First Day Retention Rate
-- Difficulty:Hard
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2090-first-day-retention-rate?code_type=1

-- Solution:
WITH cte AS
  (SELECT player_id
   FROM
     (SELECT player_id,
             login_date,
             MIN(login_date) OVER(PARTITION BY player_id) AS first_login
      FROM players_logins)
   WHERE login_date > first_login
     AND login_date <= first_login + INTERVAL '1 days')
SELECT COUNT(DISTINCT player_id)::NUMERIC /
  (SELECT COUNT(DISTINCT player_id)
   FROM players_logins) AS retention_rate
FROM cte
