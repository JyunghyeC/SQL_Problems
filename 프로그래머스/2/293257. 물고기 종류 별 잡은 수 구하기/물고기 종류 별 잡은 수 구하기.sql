-- 코드를 작성해주세요
SELECT COUNT(*) AS FISH_COUNT, FISH_NAME
FROM FISH_INFO a LEFT JOIN FISH_NAME_INFO b
ON a.FISH_TYPE = b.FISH_TYPE
GROUP BY 2
ORDER BY 1 DESC;