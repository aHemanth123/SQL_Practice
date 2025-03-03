-- Share of Loan Balance 

--Last Updated: February 2025
-- Credit Acceptance	
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
 
 --Write a query that returns the rate_type, loan_id, loan balance , 
 --and a column that shows with what percentage the loan's balance contributes to the total balance among the loans of the same rate type.

select * from submissions; 

select rate_type , loan_id , Round(( balance /sum(balance) OVER() )*100 ,2) as  Percentage
from  submissions;
 