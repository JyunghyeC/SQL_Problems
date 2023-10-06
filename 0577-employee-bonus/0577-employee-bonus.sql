# Write your MySQL query statement below
SELECT Employee.name, Bonus.bonus FROM EMPLOYEE LEFT OUTER JOIN Bonus ON EMployee.empId = Bonus.empId WHERE bonus < 1000 OR bonus IS NULL;