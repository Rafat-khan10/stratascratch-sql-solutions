-- Problem: Number of violations
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/9728-inspections-that-resulted-in-violations?code_type=1

-- Solution:

SELECT
    EXTRACT(YEAR FROM inspection_date) AS inspection_year,
    COUNT(*) AS n_violations
FROM sf_restaurant_health_violations
WHERE business_name = 'Roxanne Cafe'
GROUP BY EXTRACT(YEAR FROM inspection_date)
ORDER BY EXTRACT(YEAR FROM inspection_date) ASC
