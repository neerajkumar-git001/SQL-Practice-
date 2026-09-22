select * from teachers ; -- show the table 

alter table teachers
add column fee numeric    -- add fee column 

alter table teachers
rename column fee to fees    --rename column fee to fees

alter table teachers 
drop column fees          -- delete fees column

alter table teachers1
add column Course varchar(30)   -- add course column

alter table teachers1 
alter column course type char    -- change data type 

alter table teachers1
alter column course type varchar(30)   -- change data type 

alter table teachers 
drop column Course         -- delete course column

alter table teachers     -- rename table name
rename to teachers1

select * from teachers1 ;   -- show the table 

alter table teachers     -- rename table name
rename to teachers

drop table teachers   -- delete table 
