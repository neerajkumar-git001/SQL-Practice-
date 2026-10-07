select * from Call_Details;


select *
from Call_Details
where "Call Timestamp">='2020-10-20';


select *
from  call_details
where "Call Timestamp"<'2020-10-20';


select *
from  call_details
where 'Call Timestamp'<'2020-10-20'; --- show only table structure not show inside data 

select *
from Call_Details 
where "Channel" = 'Chatbot';

select *
From Call_Details
where "Channel"<> 'Chatbot' ;   



select *
From Call_Details
where "channel"<> 'Chatbot' ;-- Channel (of C is small ) so it shows does not exist 


select *
from Call_Details
order by "Id";

select *
from Call_details
order by "Channel" ;

select *
from Call_details
order by "Channel" desc;

select *
from Call_Details
order By "Sentiment";