# Write your MySQL query statement below
SELECT a.user_id as buyer_id, a.join_date, COUNT(b.order_date) as orders_in_2019
FROM Users a LEFT JOIN Orders b
ON a.user_id = b.buyer_id
AND YEAR(b.order_date) = 2019
GROUP BY 1;