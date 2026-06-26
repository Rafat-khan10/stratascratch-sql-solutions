-- Problem: Hour Of Highest Gas Expense
-- Difficulty: Easy
-- Source: StrataScratch
-- Link: https://platform.stratascratch.com/coding/10005-hour-of-highest-gas-expense?code_type=1

-- Solution:

select 
  hour
from lyft_rides
GROUP BY hour
ORDER BY MAX(gasoline_cost) DESC
LIMIT 1
