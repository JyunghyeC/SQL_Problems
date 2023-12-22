# Write your MySQL query statement below
WITH base AS (
    SELECT 
        num, 
        LEAD(num, 1) OVER(ORDER BY id) AS num1,
        LEAD(num, 2) OVER(ORDER BY id) AS num2
    FROM Logs
)
SELECT DISTINCT num ConsecutiveNums
FROM base
WHERE num = num1 AND num = num2;