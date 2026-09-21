create table School
(
    student_id int primary key,
	student_name varchar(50) not null,
	age int not null,
	course varchar(30),
	fee numeric
);

select * from School;