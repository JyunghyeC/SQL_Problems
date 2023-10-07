# Write your MySQL query statement below
SELECT e.name as Employee 
FROM Employee as e 
    INNER JOIN Employee as m 
    ON e.managerId = m.id 
WHERE m.salary < e.salary;