-- Problem: Top Ranked Songs
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9991-top-ranked-songs?code_type=1

-- Solution:

select 
  trackname,
  COUNT(*) AS times_top1
from spotify_worldwide_daily_song_ranking
WHERE position=1
GROUP BY trackname
ORDER BY COUNT(*) DESC
