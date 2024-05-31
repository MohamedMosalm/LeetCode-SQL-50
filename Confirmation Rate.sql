select s.user_id, round(sum(if(action = 'confirmed',1,0)) / count(*),2) as confirmation_rate
from Confirmations as c right outer join Signups as s on c.user_id = s.user_id 
group by s.user_id