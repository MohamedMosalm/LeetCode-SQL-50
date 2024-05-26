select product_id, year AS first_year, quantity, price 
from Sales
where (product_id,year) in (
    select product_id,min(year) as first_year
    from Sales
    group by product_id
)