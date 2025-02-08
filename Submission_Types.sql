--Interview Question Date: January 2021

--Credit Acceptance
--MetLife
--Credit Karma

--Easy
--ID 2002

--Write a query that returns the user ID of all users that have created at least one ‘Refinance’ submission and at least one ‘InSchool’ submission.

create database submission;

use  submission;

CREATE TABLE loans (
    id INT PRIMARY KEY,
    user_id INT,
    created_at DATETIME,
    status VARCHAR(50),
    type VARCHAR(20)
);


INSERT INTO loans (id, user_id, created_at, status, type) VALUES
(1, 100, '2017-04-21 00:00:00', 'prequal_completd_offer', 'Refinance'),
(2, 100, '2017-04-27 00:00:00', 'offer_accepted', 'Refinance'),
(3, 101, '2017-04-22 00:00:00', 'prequal_completd_no_offer', 'Refinance'),
(4, 101, '2017-04-23 00:00:00', 'offer_accepted', 'Refinance'),
(5, 101, '2017-04-25 00:00:00', 'offer_accepted', 'Personal'),
(6, 102, '2017-04-27 00:00:00', 'offer_accepted', 'InSchool'),
(7, 107, '2017-04-27 00:00:00', 'prequal_response_received', 'Personal'),
(8, 108, '2017-04-21 00:00:00', 'form_in_progress', 'Refinance'),
(9, 108, '2017-04-27 00:00:00', 'offer_accepted', 'Refinance'),
(10, 108, '2017-04-27 00:00:00', 'prequal_response_received', 'InSchool'),
(11, 100, '2015-04-21 00:00:00', 'prequal_completd_offer', 'Refinance');


select * from loans;


select user_id
from loans
where  type in ('Refinance','Inschool')
group by user_id
Having count( case when type = 'Refinance' then 1 end ) >=1
       and count(case when type = 'Inschool'then 1 end) >=1;

