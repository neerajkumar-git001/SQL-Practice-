create table School
(
    student_id int primary key,
	student_name varchar(50) not null,
	age int not null,
	course varchar(30),
	fee numeric
);

select * from School;

alter table school
rename column fee to fees

alter table school
rename column Course to Gender

alter table school
add column Course varchar(30)

--inserting data 

select * from school;

insert into school(student_id,student_name, age, gender, fees, course)
            values(1,'Anil', 20,'Male',3000, 'SQL')
			
insert into school values(2, 'Ankit', 22, 'Male', 60000, 'B.tech')
insert into school values(3, 'Sonali', 21, 'Female', 8000,'Cyber')

insert into school values(4, 'Hina', 25, 'Female', 5000, 'PowerBI'),     
 (5, 'Abhishek', 19, 'Male', 2000, 'Advance Excel'),                     -- Multiple Value Value add with help of coma sign
 (6, 'Harshika', 19, 'FeMale', 2000, 'Linkedin')                         -- After run(4,5 id ) only One line run Not add Value without 'insert into school command'


	-- add multiple value without code with the help of 'Add Row("Alt+Shift+A" )+ Save Data changes(F6) Tab inside "Data Output"'