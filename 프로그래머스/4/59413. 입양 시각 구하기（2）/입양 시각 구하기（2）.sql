-- 코드를 입력하세요
WITH RECURSIVE cte AS (
    SELECT 0 AS num
    UNION ALL
    SELECT num + 1
    FROM cte
    WHERE num < 23
)
SELECT cte.num AS HOUR, IFNULL(a.입양횟수, 0) AS `COUNT`
FROM cte LEFT JOIN (
    SELECT HOUR(datetime) AS '시간대', COUNT(*) AS '입양횟수'
    FROM ANIMAL_OUTS
    GROUP BY 1
    ORDER BY 1) a
ON cte.num = a.시간대;