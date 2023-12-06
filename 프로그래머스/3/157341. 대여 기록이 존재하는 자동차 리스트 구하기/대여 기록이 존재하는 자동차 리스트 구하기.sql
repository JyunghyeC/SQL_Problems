-- 코드를 입력하세요
SELECT DISTINCT c2.CAR_ID
FROM CAR_RENTAL_COMPANY_CAR c1 RIGHT JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY c2
ON c1.CAR_ID = c2.CAR_ID
WHERE c1.CAR_TYPE = '세단' AND c2.START_DATE LIKE '2022-10%'
ORDER BY c2.CAR_ID DESC;