select *
from Call_details;

select sum ("Call Duration In Minutes")           
from call_details;                                   -- 824222


select sum ("Csat Score") 
from Call_Details;                    --68085

select avg ("Csat Score")::numeric(10,2)
from call_details;                       --  5.55


select *
from Call_Details
where "Customer Name" like '%Ray%';

select *
from call_Details
where "Response Time" = 'Below SLA'  or "Response Time" = 'Above SLA'           

select * 
from Call_Details
where "Response Time" in ('Above SLA','Below SLA');


select *
From Call_Details
where "City" = 'New York City' and "Channel" = 'Email'


select *
from call_Details                                                                     -- 3 conditon use in one time
where "Channel"= 'Email' and "Call-Centres City" = 'Baltimore' and "City" = 'New York City';


select *
from call_Details
where "Channel" = 'Chatbot' or "City" = 'Portland' or "Reason" = 'Billing';             -- Also Use with Or Condition