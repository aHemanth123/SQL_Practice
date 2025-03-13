


--Distance Per Dollar


--Last Updated: January 2025

--Uber
--Hard
--ID 10302


create database ti;

use ti ;

create table titanic(
request_id bigint,
request_date  datetime,
request_status varchar(30),
distance_to_travel float,
monetary_cost float ,
driver_to_client_distance float ,
);

INSERT INTO titanic (request_id, request_date, request_status, distance_to_travel, monetary_cost, driver_to_client_distance) 
VALUES
(1, '2020-01-09 00:00:00', 'success', 70.59, 6.56, 14.36),
(2, '2020-01-24 00:00:00', 'success', 93.36, 22.68, 19.9),
(3, '2020-02-08 00:00:00', 'fail', 51.24, 11.39, 21.32),
(4, '2020-02-23 00:00:00', 'success', 61.58, 8.04, 44.26),
(5, '2020-03-09 00:00:00', 'success', 25.04, 7.19, 1.74),
(6, '2020-03-24 00:00:00', 'fail', 45.57, 4.68, 24.19),
(7, '2020-04-08 00:00:00', 'success', 24.45, 12.69, 15.91),
(8, '2020-04-23 00:00:00', 'success', 48.22, 11.2, 48.82),
(9, '2020-05-08 00:00:00', 'success', 56.63, 4.04, 16.08),
(10, '2020-05-23 00:00:00', 'fail', 19.03, 16.65, 11.22),
(11, '2020-06-07 00:00:00', 'fail', 81.00, 6.56, 26.6),
(12, '2020-06-22 00:00:00', 'fail', 21.32, 8.86, 28.57),
(13, '2020-07-07 00:00:00', 'fail', 14.74, 17.76, 19.33),
(14, '2020-07-22 00:00:00', 'success', 66.73, 13.68, 14.07),
(15, '2020-08-06 00:00:00', 'success', 32.98, 16.17, 25.34),
(16, '2020-08-21 00:00:00', 'success', 46.49, 1.84, 41.9),
(17, '2020-09-05 00:00:00', 'fail', 45.98, 12.2, 2.46),
(18, '2020-09-20 00:00:00', 'success', 3.14, 24.8, 36.6),
(19, '2020-10-05 00:00:00', 'success', 75.33, 23.04, 29.99),
(20, '2020-10-20 00:00:00', 'success', 53.76, 22.94, 18.74);

select * from titanic;

--You’re given a dataset of uber rides with the traveling distance (‘distance_to_travel’) and cost (‘monetary_cost’) for each ride. 
--First, find the difference between the distance-per-dollar for each date and the average distance-per-dollar for that year-month. 

--Distance-per-dollar is defined as the distance traveled divided by the cost of the ride. 
-- Use the calculated difference on each date to calculate absolute average difference in distance-per-dollar metric on monthly basis (year-month).


----The output should include the year-month (YYYY-MM) and the absolute average difference in distance-per-d+ollar 
--(Absolute value to be rounded to the 2nd decimal).
--You should also count both success and failed request_status as the distance and cost values are populated for all ride requests.
--Also, assume that all dates are unique in the dataset. Order your results by earliest request date first.
 
 WITH DistancePerDollar AS (
    SELECT 
        FORMAT(request_date, 'yyyy-MM') AS year_month,
        request_date,
		request_status,
       distance_to_travel / monetary_cost  AS distance_per_dollar
    FROM titanic
    WHERE monetary_cost > 0   
) ,
AvgDistancePerDollar AS (
    SELECT 
        year_month,
        AVG(distance_per_dollar) AS avg_distance_per_dollar
    FROM DistancePerDollar
    GROUP BY year_month
) ,
DiffPerDate AS (
    SELECT 
        d.year_month,
        d.request_date,
		d.request_status,
        ABS(d.distance_per_dollar - a.avg_distance_per_dollar) AS abs_diff
    FROM DistancePerDollar d  JOIN AvgDistancePerDollar a  
	ON d.year_month = a.year_month

),
FinalAggregation AS (
    SELECT 
        year_month,
        ROUND(AVG(abs_diff), 2) AS absolute_avg_difference,
        COUNT(CASE WHEN request_status= 'success' THEN 1 END) AS success_count,
        COUNT(CASE WHEN request_status = 'failed' THEN 1 END) AS failed_count
    FROM DiffPerDate
    GROUP BY year_month
)SELECT 
    year_month,
    absolute_avg_difference,
    success_count,
    failed_count
FROM FinalAggregation 