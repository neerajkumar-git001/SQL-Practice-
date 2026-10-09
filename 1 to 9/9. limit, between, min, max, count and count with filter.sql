select * from Call_Details;

select * 
from Call_Details
limit 10;                    -- 10  row show only

select *
from Call_Details
limit 10 offset 40;              -- after 40 Row , row no. 41 to row no. 50


select *
from Call_Details
where "Call Timestamp" between '2020-10-20' And '2020-10-25';        -- between '2020-10-20' And '2020-10-25 date data show

select *
From Call_Details
where "Call Duration In Minutes" Between 10 and 20;              -- between only (10 min to 20 min) records show 

SELECT min("Csat Score")
from Call_Details                 -- answer is 1

select max("Csat Score")
from Call_details                  -- answer is 10


select max("Csat Score") As Maximum_Value           -- Case Sensitive column name with column name 
from Call_Details;


select count(*)
from Call_Details;                 --Answer is 32941

select count("Csat Score")
From Call_Details;                 --Answer is 12271 becouse it column contain in null/blank data 

select count(Distinct "City") as Unique_City_Count
from Call_Details;                                        -- Answer is [Unique_City_Count= 461]

select count("City")
from Call_Details
where "City" = 'New York City';             --New York City count = 564


select *
from Call_Details
where upper("City") = 'SALEM'    --IT IS COMPLETLY RUN 
order by "Id" ;

SELECT * 
FROM CALL_DETAILS
ORDER BY "Id"
WHERE UPPER("CITY") = 'SALEM'           --IT IS SHOW ALSO ERROR (ERROR:  syntax error at or near "WHERE"
                                                              --  LINE 4: WHERE UPPER("CITY") = 'SALEM')
