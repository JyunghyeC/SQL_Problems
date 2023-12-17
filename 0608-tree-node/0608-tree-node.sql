# Write your MySQL query statement below
SELECT id, (CASE
           WHEN p_id IS NULL THEN "Root"
           WHEN p_id IN (SELECT p_id FROM Tree) and id IN (SELECT p_id FROM Tree) THEN "Inner"
           ELSE "Leaf"
           END) as type
FROM Tree;