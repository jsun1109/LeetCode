# Write your MySQL query statement below
Select emp.name name
from Employee emp
inner join Employee emp2
on emp.Id = emp2.managerId
group by emp2.managerId
having count(1) >= 5