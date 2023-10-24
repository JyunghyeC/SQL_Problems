# Write your MySQL query statement below
SELECT u.name, SUM(t.amount) AS BALANCE
FROM Users AS u LEFT JOIN Transactions AS t
ON u.account = t.account
GROUP BY u.name
HAVING SUM(t.amount) > 10000;