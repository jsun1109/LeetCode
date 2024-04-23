# Write your MySQL query statement below
select w2.id
from weather w1
join weather w2 on DATE_ADD(w1.recordDate, Interval 1 day) = w2.recordDate
where w2.temperature > w1.temperature