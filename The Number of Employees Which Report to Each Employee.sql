select reports_to as employee_id,(select name from employees e1 where e.reports_to = e1.employee_id) as name, count(*) as reports_count, round(avg(age)) as average_age
from Employees e
where reports_to is not null
group by reports_to
order by reports_to