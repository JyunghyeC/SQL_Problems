# Write your MySQL query statement below
(SELECT name AS results
FROM Users u JOIN MovieRating r
ON u.user_id = r.user_id
GROUP BY 1
ORDER BY COUNT(*) DESC, name
LIMIT 1)

UNION ALL

(SELECT title AS results
FROM Movies m JOIN MovieRating r
ON m.movie_id = r.movie_id
WHERE created_at LIKE '2020-02%'
GROUP BY 1
ORDER BY AVG(rating) DESC, title
LIMIT 1);