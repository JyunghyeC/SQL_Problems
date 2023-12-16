# Write your MySQL query statement below
WITH most_friend as (
    SELECT requester_id
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id
    FROM RequestAccepted
)
SELECT requester_id as id, COUNT(*) as num
FROM most_friend
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;