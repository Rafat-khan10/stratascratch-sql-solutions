-- Problem: Share of Active Users
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2005-share-of-active-users?code_type=1

-- Solution:

select
   COUNT(DISTINCT user_id)*100.0/(SELECT COUNT(DISTINCT user_id) FROM fb_active_users)
   AS us_active_share
from fb_active_users
WHERE country='USA' AND status='open'
