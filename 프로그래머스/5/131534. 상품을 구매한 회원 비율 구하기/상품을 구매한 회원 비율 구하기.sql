-- 코드를 입력하세요
SELECT YEAR(o.SALES_DATE) as YEAR, MONTH(o.SALES_DATE) as MONTH, COUNT(DISTINCT o.USER_ID) as PURCHASED_USERS,
ROUND(COUNT(DISTINCT o.USER_ID) / (SELECT COUNT(USER_ID) FROM USER_INFO WHERE JOINED LIKE '2021%'), 1) as PUCHASED_RATIO
FROM USER_INFO u RIGHT JOIN ONLINE_SALE o
ON u.USER_ID = o.USER_ID
WHERE u.JOINED LIKE '2021%'
GROUP BY 2
ORDER BY 1, 2;