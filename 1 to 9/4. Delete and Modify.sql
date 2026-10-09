-- delete , Modify 

select * from school

delete from school 
where student_id = 5;  -- particular one row delete 


insert into school values(9, 'Anil', 30, 'Female', 8000, 'PowerBi') -- wrong entry data  in a table 

update School    
set age = 28, gender = 'Male', fees = 5000
where student_id = 9                             -- modify wrong entry data  


UPDATE SCHOOL    -- MODIFY WRONG ENTRY DATA  
set age = 28, gender = 'Male', fees = 5000
where student_id = 9

