# Write your MySQL query statement below
select sign.user_id, round(avg(if(confirm.action = "confirmed", 1, 0)), 2) confirmation_rate
from signups sign
left join confirmations confirm
on sign.user_id = confirm.user_id
group by sign.user_id