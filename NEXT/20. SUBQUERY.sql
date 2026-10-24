          --*  USING SUB QUESRY IN SQL  *--


-- EMP TABLE	
DROP TABLE IF EXISTS EMP ;

CREATE TABLE IF NOT EXISTS EMP
(
	EMP_ID VARCHAR(5) PRIMARY KEY,
	SALESMAN_CITY VARCHAR(30),
	NAME VARCHAR(15),
	AGE INT
);

SELECT * FROM EMP;

INSERT INTO EMP(EMP_ID, SALESMAN_CITY, NAME, AGE)
           VALUES('S001', 'Mumbai','Sachin Shah',30),
		   		 ('S002', 'Delhi', 'Arjun Chopde', 28),
				 ('S003', 'Sagar', 'Vinod More', 26),
				 ('S004', 'Mumbai', 'Vijay Jha', 35),
				 ('S005', 'Pune', 'Raj Umad', 33),
				 ('S006', 'Nagpur', 'Hari Soni', 36);


-- FIND THE AVERAGE AGE OF ALL SALESMAN 
SELECT AVG(AGE) FROM EMP;

-- SHOW THE SALESMAN WHOSE AGE IS LESS THANE  AVG AGE 
SELECT *
FROM EMP 
WHERE AGE<(SELECT AVG(AGE) FROM EMP );



-- SALARY TABLE 
DROP TABLE IF EXISTS SALARY ;

CREATE TABLE IF NOT EXISTS SALARY
(
	EMP_ID VARCHAR(5) PRIMARY KEY,
	NAME VARCHAR(15),
	SALARY NUMERIC
);

SELECT * FROM SALARY;

INSERT INTO SALARY(EMP_ID,  NAME, SALARY)
           VALUES('S001', 'Sachin Shah',50000),
		   		 ('S002', 'Arjun Chopde', 26000),
				 ('S004',  'Vijay Jha', 30000),
				 ('S006',  'Hari Soni', 60000);


-- SHOW ALL DATA IN ONLY CONTAIN SALARY 		
SELECT *
FROM EMP
WHERE EMP_ID IN (SELECT EMP_ID FROM SALARY);



							--ASSIGNMENT QUESTION
-- QUESTION :-  SHOW EMP_ID, SALESMAN NAME AND AGE OR THE EMPLOYEE WHOSE SALARY IS GREATERTHAN THAN 30000
		--USING SUBQUERY 
select emp_id, name , age 
from emp 
where emp_id in (select emp_id from salary where salary>30000)

	--USING JOIN 
select emp.emp_id, emp.name , emp.age 
from emp 
join salary 
using (emp_id)
where salary.salary>30000;
