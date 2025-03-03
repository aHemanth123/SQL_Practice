--Variable vs Fixed Rates


--Last Updated: February 2025

--Credit Karma
--Medium
--ID 2000

create database varvsfix;
use varvsfix;

create table submissions(
id  bigint,
balance float,
interest_rate float,
rate_type  varchar(50),
loan_id  bigint
);

 
INSERT INTO submissions (id, balance, interest_rate, rate_type, loan_id) VALUES
(1, 5229.12, 8.75, 'variable', 2),
(2, 12727.52, 11.37, 'fixed', 4),
(3, 14996.58, 8.25, 'fixed', 9),
(4, 21149, 4.75, 'variable', 7),
(5, 14379, 3.75, 'variable', 5),
(6, 6221.12, 6.75, 'variable', 11);

--Write a SQL query to show each loan and its rate type. For each loan, create two new columns: fixed and variable.
--If the loan has a fixed rate, put a 1 in the fixed column and a 0 in the variable column. If the loan has a variable rate, do the opposite.

select * from submissions;

-- if condition not works in  Microsoft sql server  instead try iif 

select loan_id, rate_type ,
   case when rate_type  = 'fixed' then 1 else 0 end as fixed,
   case when rate_type = 'variable' then 1 else 0 end as variable
from  submissions 

select loan_id, rate_type ,
     IIF( rate_type  = 'fixed' , 1 ,0 )  fixed,
      IIF( rate_type = 'variable' ,1 ,0 )variable
from  submissions 
