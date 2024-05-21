select contest_id, round(100 * count(*) / (select count(*) from Users),2) as percentage
from Users u join Register r on r.user_id = u.user_id
group by contest_id
order by percentage desc, contest_id asc