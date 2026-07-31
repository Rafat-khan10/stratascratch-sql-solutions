-- Problem: Flags per Video
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2102-flags-per-video?code_type=1

-- Solution:

select 
  video_id,
COUNT(DISTINCT CONCAT_WS(' ', user_firstname, user_lastname)) AS num_unique_users
FROM user_flags
WHERE flag_id IS NOT NULL
GROUP BY video_id 
