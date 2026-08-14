-- Problem: Most Profitable Financial Company
-- Difficulty: Easy
-- Source: StrataScratch
-- Link:https://platform.stratascratch.com/coding/9663-find-the-most-profitable-company-in-the-financial-sector-of-the-entire-world-along-with-its-continent?code_type=1

-- Solution:


SELECT 
   company,
   continent
FROM (    
       select 
           company,
            continent,
            SUM(profits)
        from forbes_global_2010_2014
        WHERE sector='Financials'
        GROUP BY company, continent
        ORDER BY SUM(profits) DESC 
        LIMIT 1
      ) AS t
