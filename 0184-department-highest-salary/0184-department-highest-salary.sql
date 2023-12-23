# Write your MySQL query statement below
WITH base AS (
    SELECT b.name AS Department, a.name AS Employee, a.salary AS Salary,
    RANK() OVER(PARTITION BY b.id ORDER BY salary DESC) AS rnk
    FROM Department b JOIN Employee a
    ON b.id = a.departmentId
)
SELECT Department, Employee, Salary
FROM base
WHERE rnk = 1;