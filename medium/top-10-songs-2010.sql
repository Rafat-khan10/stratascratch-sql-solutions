-- Problem: Top 10 Songs 2010
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9650-find-the-top-10-ranked-songs-in-2010?code_type=1

-- Solution:
select 
 DISTINCT year_rank,
 group_name,
 song_name
from billboard_top_100_year_end
WHERE year='2010' AND year_rank BETWEEN 1 AND 10
