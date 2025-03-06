--Number of Shipments Per Month


--Last Updated: February 2025

--Amazon
--Easy

--ID 2056


create database shipments

use shipments

create table  amazon_shipment(
shipment_id bigint,
sub_id bigint,
weight bigint,
shipment_date datetime
);

INSERT INTO amazon_shipment (shipment_id, sub_id, weight, shipment_date) VALUES
(101, 1, 10, '2021-08-30 00:00:00'),
(101, 2, 20, '2021-09-01 00:00:00'),
(101, 3, 10, '2021-09-05 00:00:00'),
(102, 1, 50, '2021-09-02 00:00:00'),
(103, 1, 25, '2021-09-01 00:00:00'),
(103, 2, 30, '2021-09-02 00:00:00'),
(104, 1, 30, '2021-08-25 00:00:00'),
(104, 2, 10, '2021-08-26 00:00:00'),
(105, 1, 20, '2021-09-02 00:00:00');

select * from amazon_shipment;

--Write a query that will calculate the number of shipments per month. 
--The unique key for one shipment is a combination of shipment_id and sub_id. 
--Output the year_month in format YYYY-MM and the number of shipments in that month.


select  format( shipment_date,'yyyy-MM') as Ymonth  , count( Distinct (  concat(shipment_id,'-' , sub_id)))  
from amazon_shipment
group by  format( shipment_date,'yyyy-MM')    -- u cannot use Ymonth 
order by Ymonth