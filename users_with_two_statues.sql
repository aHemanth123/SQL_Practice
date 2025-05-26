


--Users With Two Statuses

--Last Updated: May 2025

--Twitch
--Easy
--ID 2009



-- self join 

create database  s2;

use s2; 

CREATE TABLE twitch_sessions (
    user_id VARCHAR(255),
    session_start VARCHAR(255),
    session_end VARCHAR(255),
    session_id INT,
    session_type VARCHAR(255)
);


INSERT INTO twitch_sessions (user_id, session_start, session_end, session_id, session_type) VALUES
(0, '2020-08-11 05:51:31', '2020-08-11 05:54:45', 539, 'streamer'),
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



select  Distinct  v.user_id
from twitch_sessions  v 
join   twitch_sessions s
on  v.user_id =s.user_id   and  v.session_id  = s.session_id
