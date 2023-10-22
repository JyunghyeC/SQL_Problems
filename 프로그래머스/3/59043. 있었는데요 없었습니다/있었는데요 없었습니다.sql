-- 코드를 입력하세요
SELECT a1.ANIMAL_ID, a1.NAME
FROM ANIMAL_INS AS a1 LEFT JOIN ANIMAL_OUTS AS a2
ON a1.ANIMAL_ID = a2.ANIMAL_ID
WHERE a1.DATETIME > a2.DATETIME
ORDER BY a1.DATETIME;