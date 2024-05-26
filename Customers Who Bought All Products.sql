select customer_id
from Customer as c join Product as p on c.product_key = p.product_key
group by customer_id
having count(distinct p.product_key) = (select count(*) from Product)