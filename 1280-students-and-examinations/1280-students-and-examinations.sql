# Write your MySQL query statement below
select a.student_id, a.student_name, a.subject_name, count(exam.subject_name) attended_exams
from
(select *
from students stu
cross join subjects sub
) a
left join examinations exam on a.subject_name = exam.subject_name
and a.student_id = exam.student_id
group by a.student_id, a.subject_name
order by a.student_id, a.subject_name