--Users Activity Per Month Day


--Last Updated: March 2025

--Meta
--Easy
--ID 2006
 
CREATE DATABASE active_per_month;
USE active_per_month;

-- Create the facebook_posts table
CREATE TABLE facebook_posts (
    post_id BIGINT PRIMARY KEY,
    poster BIGINT,
    post_text VARCHAR(255),
    post_keywords VARCHAR(255),
    post_date DATETIME2
);

-- Insert the provided data into the facebook_posts table
INSERT INTO facebook_posts (post_id, poster, post_text, post_keywords, post_date)
VALUES
    (0, 2, 'The Lakers game from last night was great.', '[basketball,lakers,nba]', '2019-01-01 00:00:00'),
    (1, 1, 'Lebron James is top class.', '[basketball,lebron_james,nba]', '2019-01-02 00:00:00'),
    (2, 2, 'Asparagus tastes OK.', '[asparagus,food]', '2019-01-01 00:00:00'),
    (3, 1, 'Spaghetti is an Italian food.', '[spaghetti,food]', '2019-01-02 00:00:00'),
    (4, 3, 'User 3 is not sharing interests', '[#spam#]', '2019-01-01 00:00:00'),
    (5, 3, 'User 3 posts SPAM content a lot', '[#spam#]', '2019-01-02 00:00:00');


select * from facebook_posts;

--Return a distribution of users activity per day of the month. 
--By distribution we mean the number of posts per day of the month.   

 SELECT DAY(post_date) AS day_of_month, DATENAME(MONTH, post_date) AS month_name,

    COUNT( DISTINCT (post_id) ) AS post_count     
FROM facebook_posts

GROUP BY DAY(post_date) , DATENAME( MONTH, post_date) , MONTH(post_date)         
ORDER BY     MONTH(post_date) ,day_of_month;          -- FIRST month order then date           