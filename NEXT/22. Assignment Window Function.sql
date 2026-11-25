              -- PRACTICE WITH WINDOW FUNCTION 


-- CREATING A EMPLOYEE SALES TABLE 
DROP TABLE IF EXISTS EMP_SALES;

CREATE TABLE IF NOT EXISTS EMP_SALES
(
    employee_id VARCHAR(10)  ,
	employee_name VARCHAR(50) , 
	department VARCHAR(10),
	region VARCHAR(20),
	product VARCHAR(10),
	sales_amount INT ,
	units_sold INT,
	sale_date DATE,
	customer_satisfaction INT 

);


SELECT * FROM EMP_SALES ;



-- 1) Rank Sales by Region : For each region
SELECT * , 
	DENSE_RANK() OVER(PARTITION BY REGION ORDER BY SALES_AMOUNT) AS RANKING
FROM EMP_SALES;



-- 2) Calculate Running Total of Sales : For each department,  Order the results by sale_date. 
SELECT * , 
      SUM(SALES_AMOUNT) OVER(PARTITION BY DEPARTMENT ORDER BY SALE_DATE ) AS RUNNING_TOTAL 
FROM EMP_SALES ;



-- 3) Calculate Average Sales Per Employee: For each employee_id
SELECT * , 
		ROUND(AVG(SALES_AMOUNT) OVER(PARTITION BY EMPLOYEE_ID),2)  AS AVG_SALES 
FROM EMP_SALES ;


-- 4)Identify Top 5 Employees by Units Sold: For each department
SELECT * 
FROM 
(SELECT * ,RANK() OVER(PARTITION BY DEPARTMENT ORDER BY UNITS_SOLD DESC) AS RANKING
	   FROM EMP_SALES ) 
where ranking <=5


--5) Calculate Difference in Sales: For each employee
SELECT *,
     (SALES_AMOUNT - LAG(SALES_AMOUNT) OVER(PARTITION BY EMPLOYEE_ID ORDER BY SALE_DATE )) AS DIFF_SALES
FROM EMP_SALES;

--6) Compute Moving Average of Sales Amount: For each region,
select * , 
	Round(avg(sales_amount ) over (partition by region order by sale_date rows between 2 preceding and current row ),2)
from emp_sales;
