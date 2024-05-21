select st.student_id, st.student_name, sub.subject_name, count(ex.student_id) as attended_exams
from Students as st cross join Subjects as sub left join Examinations as ex
on ex.student_id = st.student_id and ex.subject_name = sub.subject_name
group by st.student_id, st.student_name, sub.subject_name
order by st.student_id, sub.subject_name 