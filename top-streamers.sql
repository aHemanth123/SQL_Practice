--Top Streamers


--Interview Question Date: January 2021

--Twitch
--Medium
--ID 2010
 

create database top_streamers;

use top_streamers;

create table  twitch_sessions(
user_id bigint,
session_start datetime,
session_end datetime,
session_id bigint,
session_type varchar(50)
);

insert into twitch_sessions values
( 0	,'2020-08-11 05:51:31',	'2020-08-11 05:54:45' ,	539 ,	'streamer'),
(2, '2020-07-11 03:36:54', '2020-07-11 03:37:08', 840, 'streamer'),
(3, '2020-11-26 11:41:47', '2020-11-26 11:52:01', 848, 'streamer'),
(1, '2020-11-19 06:24:24', '2020-11-19 07:24:38', 515, 'viewer'),
(2, '2020-11-14 03:36:05', '2020-11-14 03:39:19', 646, 'viewer'),
(0, '2020-03-11 03:01:40', '2020-03-11 03:01:59', 782, 'streamer'),
(0, '2020-08-11 03:50:45', '2020-08-11 03:55:59', 815, 'viewer'),
(3, '2020-10-11 22:15:14', '2020-10-11 22:18:28', 630, 'viewer'),
(1, '2020-11-20 06:59:57', '2020-11-20 07:20:11', 907, 'streamer'),
(2, '2020-07-11 14:32:19', '2020-07-11 14:42:33', 949, 'viewer'),
(4, '2020-08-11 15:32:19', '2020-08-11 16:42:33', 818, 'viewer'),
(5, '2020-12-20 07:59:57', '2020-12-20 08:52:57', 619, 'streamer'),
(6, '2020-12-25 08:02:38', '2020-12-25 08:36:42', 832, 'streamer'),
(6, '2020-08-12 15:44:19', '2020-08-12 16:42:19', 762, 'streamer'),
(6, '2020-11-24 07:59:57', '2020-11-24 08:16:57', 760, 'streamer'),
(6, '2020-08-14 05:50:45', '2020-08-14 06:42:45', 544, 'viewer'),
(7, '2020-11-18 04:36:05', '2020-11-18 04:43:05', 906, 'streamer'),
(7, '2020-08-14 05:50:45', '2020-08-14 06:27:45', 645, 'streamer'),
(7, '2020-08-11 15:32:19', '2020-08-11 16:22:19', 817, 'viewer');


select * from twitch_sessions;



--List the top 3 users who accumulated the most sessions. Include only the user who had more streaming sessions than viewing.
--Return the user_id, number of streaming sessions, and number of viewing sessions.
 


  WITH stream AS (
  SELECT user_id, count( *) as stream_sessions
  FROM twitch_sessions
  WHERE session_type = 'streamer'
  group by user_id
), 
views AS (
  SELECT user_id,  count(*)  as view_sessions
  FROM twitch_sessions
  WHERE session_type = 'viewer'
  group by user_id
)
SELECT  top 3  v.user_id,s.stream_sessions,v.view_sessions
FROM stream s
JOIN views v ON s.user_id = v.user_id
WHERE s. stream_sessions > v.view_sessions
order by  stream_sessions desc
 