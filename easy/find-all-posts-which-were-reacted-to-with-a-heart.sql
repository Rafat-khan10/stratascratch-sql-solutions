-- Problem :Find all posts which were reacted to with a heart
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart?code_type=1

-- Solution:

SELECT
     DISTINCT fp.post_id,
     fp.poster,
     fp.post_text,
     fp.post_keywords,
     fp.post_date
FROM facebook_reactions AS fr
INNER JOIN facebook_posts AS fp ON fr.post_id=fp.post_id
WHERE reaction = 'heart'
