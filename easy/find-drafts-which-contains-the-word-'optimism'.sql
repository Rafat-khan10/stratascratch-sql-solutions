-- Problem: Find drafts which contains the word 'optimism'
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9805-find-drafts-which-contains-the-word-optimism?code_type=1

-- Solution:

select 
  *
from google_file_store
WHERE 
  filename LIKE 'draft%' AND 
  contents LIKE '%optimism%'
