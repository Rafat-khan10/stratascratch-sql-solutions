-- Problem: Completion Rate by Title
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10803-completion-rate-by-title

-- Solution:

select 
   t.title_name,
   ROUND(AVG(
    CASE
      WHEN completed =1 THEN 1
      ELSE 0
     END 
   )*100.0,1) AS completion_pct 
FROM stream_sessions AS s
INNER JOIN stream_titles AS t
ON s.title_id = t.title_id
GROUP BY t.title_name
HAVING  COUNT(*) >=100
ORDER BY completion_pct DESC
