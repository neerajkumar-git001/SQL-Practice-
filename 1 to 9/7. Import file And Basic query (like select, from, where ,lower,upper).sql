DROP TABLE IF EXISTS call_details;

CREATE TABLE call_details (
    "Id" VARCHAR(24),
    "Call Timestamp" DATE,
    "Call-Centres City" VARCHAR(11),
    "Channel" VARCHAR(11),
    "City" VARCHAR(25),
    "Customer Name" VARCHAR(34),
    "Reason" VARCHAR(16),
    "Response Time" VARCHAR(10),
    "Sentiment" VARCHAR(13),
    "State" VARCHAR(20),
    "Call Duration In Minutes" INT,
    "Csat Score" INT
);


SELECT * FROM CALL_DETAILS;

-- Copy 
-- call_details("Id", "Call Timestamp", "Call-Centres City", "Channel", "City", "Customer Name", "Reason", "Response Time", "Sentiment", "State", "Call Duration In Minutes"	,"Csat Score")
-- FROM 'C:\Users\SACHIN SAHU\OneDrive\Music\Project\Power BI Industry Projects - All Practice Files\2-Intermediate Level\08 Call Center Report\Dataset\Call Center_Call Center.csv'
-- DELIMITER ','
-- csv header


SELECT * FROM CALL_DETAILS;

SELECT "Channel","City", "Reason"
FROM CALL_DETAILS



SELECT *
FROM CALL_DETAILS
where "City" = 'Lansing';

select * 
from Call_Details
where lower("Channel") = 'web';   --case Sensitive 


select * 
from call_Details
where upper("Channel")='WEB'