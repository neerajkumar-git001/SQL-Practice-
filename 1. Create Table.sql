-- first way to create a table 

create table School
(
    student_id int primary key,
	student_name varchar(50) not null,
	age int not null,
	course varchar(30),
	fee numeric
);

select * from School;


-- Second way to crate a table 
CREATE TABLE public."Teachers"
(
    "Teachers_id" integer,
    "Teachers_name" character varying(50) NOT NULL,
    "Age " integer NOT NULL,
    "Course" character varying(30) NOT NULL,
    PRIMARY KEY ("Teachers_id")
);

ALTER TABLE IF EXISTS public."Teachers"
    OWNER to postgres;
