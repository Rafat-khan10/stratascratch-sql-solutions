-- Problem: Count Occurrences Of Words In Drafts
-- Difficulty: Medium
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9817-find-the-number-of-times-each-word-appears-in-drafts?code_type=1

-- Solution:

WITH cte AS (
select 
  contents,
  LOWER(
  REPLACE(
  REPLACE(STRING_TO_TABLE(contents,' '),'.','')
  ,',','')
  )
  AS word
from google_file_store
)
SELECT
 word,
 COUNT(*) AS occurrences
FROM cte
GROUP BY word 
ORDER BY occurrences DESC
