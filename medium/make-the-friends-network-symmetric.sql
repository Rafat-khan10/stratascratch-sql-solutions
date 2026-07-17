-- Problem: Make the friends network symmetric
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9813-make-the-friends-network-symmetric?code_type=1

-- Solution:

select 
  user_id ,
  friend_id
from google_friends_network 
UNION 
select 
  friend_id,
  user_id
from google_friends_network
