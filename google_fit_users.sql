
--Google Fit User Tracking


--Last Updated: March 2025

--Google
--Hard
--ID 10067

create database GoogleFit;

use GoogleFit;

CREATE TABLE  google_fit_location(
    user_id VARCHAR(50),
    session_id INT,
    step_id INT,
    day INT,
    latitude FLOAT,
    longitude FLOAT,
    altitude FLOAT
);

INSERT INTO google_fit_location(user_id, session_id, step_id, day, latitude, longitude, altitude) VALUES
('55e60cfcc9dc49c17e', 0, 186, 1, 40, 20, 1502.43),
('75d295377a46f83236', 2, 161, 10, 40, 20, 1499),
('406539987dd9b679c0', 0, 133, 7, 40, 20, 1498.37),
('e6088004caf0c8cc51', 0, 12, 7, 40, 20, 1499.31),
('ef5fe98c6b9f313075', 0, 44, 8, 40, 20, 1497.6),
('75d295377a46f83236', 1, 135, 10, 40, 20, 1501.34),
('6b503743a13d778200', 2, 88, 4, 40, 20, 1499.65),
('55e60cfcc9dc49c17e', 1, 165, 1, 40, 20, 1499.75),
('d63386c884aeb9f71d', 0, 107, 3, 40, 20, 1500.14),
('406539987dd9b679c0', 0, 101, 7, 40, 20, 1501.64),
('5eff3a5bfc0687351e', 0, 91, 9, 40, 20, 1502.15),
('157e3e9278e32aba3e', 1, 3, 8, 40, 20, 1502.25),
('91f59516cb9dee1e88', 1, 4, 8, 40, 20, 1500.15),
('157e3e9278e32aba3e', 1, 5, 2, 40, 20, 1497.79),
('e6088004caf0c8cc51', 1, 6, 4, 40, 20, 1498.5),
('5dc768b2f067c56f77', 1, 7, 5, 40, 20, 1500.72),
('aa0bd72b729fab6e9e', 1, 8, 8, 40, 20, 1501.23),
('75d295377a46f83236', 1, 9, 10, 40, 20, 1497.01),
('cbc4bd40cd1687754', 1, 10, 2, 40, 20, 1498.65),
('8bba390b53976da0cd', 1, 11, 4, 40, 20, 1501.88),
('55e60cfcc9dc49c17e', 1, 12, 1, 40, 20, 1499.14),
('850badf89ed8f06854', 1, 13, 4, 40, 20, 1502.78),
('91f59516cb9dee1e88', 1, 14, 10, 40, 20, 1499.57),
('e0e0defbb9ec47f6f7', 1, 15, 6, 40, 20, 1500.96),
('91f59516cb9dee1e88', 1, 16, 5, 40, 20, 1499.67),
('aa0bd72b729fab6e9e', 1, 17, 6, 40, 20, 1498.97),
('7cfe354d9a64bf8173', 1, 18, 8, 40, 20, 1499.31),
('e0e0defbb9ec47f6f7', 1, 19, 6, 40, 20, 1501.63),
('e6088004caf0c8cc51', 1, 33, 9, 40, 20, 1501.41),
('157e3e9278e32aba3e', 1, 32, 2, 40, 20, 1500.46),
('6edf0be4b2267df1fa', 1, 31, 6, 40, 20, 1499.51),
('a84065b7933ad01019', 1, 30, 1, 40, 20, 1501.86),
('157e3e9278e32aba3e', 1, 29, 4, 40, 20, 1502.4),
('114bafadff2d882864', 1, 28, 10, 40, 20, 1497.53),
('6edf0be4b2267df1fa', 1, 2, 4, 40, 20, 1498.92),
('2813e59cf6c1ff698e', 1, 27, 6, 40, 20, 1497.5),
('e0e0defbb9ec47f6f7', 1, 25, 6, 40, 20, 1497.98),
('6b503743a13d778200', 1, 24, 3, 40, 20, 1501.02),
('d63386c884aeb9f71d', 1, 23, 10, 40, 20, 1501.58),
('8bba390b53976da0cd', 1, 22, 6, 40, 20, 1501.51),
('d63386c884aeb9f71d', 1, 21, 10, 40, 20, 1501.3),
('850badf89ed8f06854', 1, 20, 4, 40, 20, 1500.51),
('e22d2eabc2d4c19688', 1, 26, 5, 40, 20, 1500.32),
('114bafadff2d882864', 1, 34, 8, 40, 20, 1502.84),
('ef5fe98c6b9f313075', 1, 1, 8, 40, 20, 1497.85),
('6b503743a13d778200', 0, 174, 2, 40, 20, 1497.12),
('5eff3a5bfc0687351e', 0, 143, 2, 40, 20, 1498.8),
('5dc768b2f067c56f77', 0, 144, 2, 40, 20, 1500.92),
('75d295377a46f83236', 0, 145, 3, 40, 20, 1502.46),
('cbc4bd40cd1687754', 0, 146, 6, 40, 20, 1497.41),
('5eff3a5bfc0687351e', 0, 147, 10, 40, 20, 1499.68),
('5b8754928306a18b68', 0, 148, 1, 40, 20, 1497.16),
('6b503743a13d778200', 0, 149, 6, 40, 20, 1498.02),
('e6088004caf0c8cc51', 0, 150, 4, 40, 20, 1500.5),
('91f59516cb9dee1e88', 0, 151, 5, 40, 20, 1502.03),
('7cfe354d9a64bf8173', 0, 152, 8, 40, 20, 1500.09),
('6edf0be4b2267df1fa', 0, 153, 9, 40, 20, 1498.52),
('32ded68d89443e808', 0, 154, 4, 40, 20, 1501.94),
('47be2887786891367e', 0, 155, 8, 40, 20, 1500.08),
('157e3e9278e32aba3e', 0, 156, 10, 40, 20, 1497.81),
('114bafadff2d882864', 0, 157, 10, 40, 20, 1501.78),
('91f59516cb9dee1e88', 0, 158, 9, 40, 20, 1497.15),
('e22d2eabc2d4c19688', 0, 159, 5, 40, 20, 1502.17),
('5dc768b2f067c56f77', 0, 173, 9, 40, 20, 1500.07),
('cbc4bd40cd1687754', 0, 172, 1, 40, 20, 1498.79),
('7cfe354d9a64bf8173', 0, 171, 7, 40, 20, 1501.16),
('8bba390b53976da0cd', 0, 170, 2, 40, 20, 1500.71),
('47be2887786891367e', 0, 169, 8, 40, 20, 1499.66),
('aa0bd72b729fab6e9e', 0, 168, 2, 40, 20, 1498.42),
('e6088004caf0c8cc51', 1, 0, 2, 40, 20, 1499.24),
('47be2887786891367e', 0, 167, 2, 40, 20, 1499.28),
('a84065b7933ad01019', 0, 165, 6, 40, 20, 1497.55),
('75d295377a46f83236', 0, 164, 3, 40, 20, 1502.36),
('5eff3a5bfc0687351e', 0, 163, 10, 40, 20, 1500.2),
('850badf89ed8f06854', 0, 162, 5, 40, 20, 1500.29),
('ef5fe98c6b9f313075', 0, 161, 1, 40, 20, 1501.42),
('75d295377a46f83236', 0, 160, 8, 40, 20, 1500.73),
('850badf89ed8f06854', 0, 166, 5, 40, 20, 1499.44),
('6b503743a13d778200', 1, 35, 2, 40, 20, 1498.53),
('406539987dd9b679c0', 1, 36, 1, 40, 20, 1501.12),
('d63386c884aeb9f71d', 1, 37, 8, 40, 20, 1500.83),
('e22d2eabc2d4c19688', 1, 74, 3, 40, 20, 1502.12),
('d63386c884aeb9f71d', 1, 75, 3, 40, 20, 1498.83),
('e22d2eabc2d4c19688', 1, 76, 1, 40, 20, 1500.61),
('2813e59cf6c1ff698e', 1, 77, 6, 40, 20, 1500.23),
('cbc4bd40cd1687754', 1, 78, 6, 40, 20, 1501.6),
('e0e0defbb9ec47f6f7', 1, 79, 3, 40, 20, 1501.26),
('6edf0be4b2267df1fa', 1, 80, 2, 40, 20, 1499.31),
('e0e0defbb9ec47f6f7', 1, 81, 2, 40, 20, 1497.06),
('e0e0defbb9ec47f6f7', 1, 82, 8, 40, 20, 1500.72),
('aa0bd72b729fab6e9e', 1, 83, 8, 40, 20, 1497.04),
('7cfe354d9a64bf8173', 1, 84, 3, 40, 20, 1502.46),
('850badf89ed8f06854', 1, 85, 10, 40, 20, 1499.62),
('75d295377a46f83236', 1, 86, 6, 40, 20, 1500.72),
('5eff3a5bfc0687351e', 1, 87, 5, 40, 20, 1501.73),
('850badf89ed8f06854', 1, 88, 9, 40, 20, 1499.81),
('d63386c884aeb9f71d', 1, 89, 9, 40, 20, 1497.87),
('e0e0defbb9ec47f6f7', 1, 90, 3, 40, 20, 1497.23),
('406539987dd9b679c0', 2, 0, 10, 40, 20, 1499.45),
('75d295377a46f83236', 1, 103, 7, 40, 20, 1497.81);


select * from google_fit_location;






WITH SessionData AS (
    SELECT
        session_id,
        MIN(latitude) AS min_lat,
        MAX(latitude) AS max_lat,
        MIN(longitude) AS min_lon,
        MAX(longitude) AS max_lon
    FROM
        google_fit_location
    GROUP BY
        session_id, day
    HAVING
        COUNT(DISTINCT step_id) > 1       --  Have  stepid min 2 
),
EarthCurvatureDistance AS (
    SELECT
        session_id,
        6371 * ACOS(                                                 -- (π/180)  --> convert to radians in question
            SIN(RADIANS(min_lat)) * SIN(RADIANS(max_lat)) +         -- Not Use pow( ,2)
            COS(RADIANS(min_lat)) * COS(RADIANS(max_lat)) *
            COS(RADIANS(max_lon) - RADIANS(min_lon))
        ) AS distance_curvature
    FROM
        SessionData
),

FlatSurfaceDistance AS (
    SELECT
        session_id,
        111 * SQRT(
            SQUARE(max_lat - min_lat) +
            SQUARE(max_lon - min_lon)
        ) AS distance_flat
    FROM
        SessionData
) ,

AverageDistances AS (
    SELECT
        AVG(distance_curvature) AS avg_distance_curvature,
        AVG(distance_flat) AS avg_distance_flat,
        AVG(distance_curvature) - AVG(distance_flat) AS difference
    FROM
        EarthCurvatureDistance
    JOIN
        FlatSurfaceDistance
    ON EarthCurvatureDistance.session_id = FlatSurfaceDistance.session_id
)
SELECT
    avg_distance_curvature,
    avg_distance_flat,
    difference
FROM
    AverageDistances;