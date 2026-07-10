-- Problem: Consecutive Days
-- Difficulty: Hard
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/2054-consecutive-days?code_type=1

-- Solution:

WITH cte AS (
    SELECT
        *,
        record_date AS current_record_date,
        LAG(record_date) OVER (PARTITION BY user_id ORDER BY record_date ASC) AS prev_record_date,
        LEAD(record_date) OVER (PARTITION BY user_id ORDER BY record_date ASC) AS next_record_date
    FROM sf_events
)

SELECT user_id
FROM cte
WHERE
    prev_record_date IS NOT NULL
    AND next_record_date IS NOT NULL
    AND current_record_date - prev_record_date = 1
    AND next_record_date - current_record_date = 1
