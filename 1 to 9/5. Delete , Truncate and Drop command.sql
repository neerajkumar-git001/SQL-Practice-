-- diffrence between Delete ,Truncate and Drop 

select * into school2
from school;

select * from school2;

delete from school2
where student_id =6 or student_id = 9;

truncate school2;

delete from school2;

drop table school2;

delete from school2
where gender = 'Male' and course = 'SQL';


alter table school2
drop column fees;

