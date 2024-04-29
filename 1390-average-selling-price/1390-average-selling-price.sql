# Write your MySQL query statement below
select prices.product_id, coalesce(round(sum(price*units)/sum(units), 2), 0) average_price
from prices left join unitsSold unit on prices.product_id = unit.product_id
and purchase_date between start_date and end_date
group by prices.product_id