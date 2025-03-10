

--Difference Between Times


--Last Updated: March 2025

--EY
--Tata Consultancy
--Deloitte
--Medium
--ID 2064

create database gender ;
use gender 

CREATE TABLE marathon_male (
    place BIGINT,
    div_tot VARCHAR(10),
    num BIGINT,
    person_name VARCHAR(100),
    age BIGINT,
    hometown VARCHAR(100),
    pace BIGINT,
    gun_time BIGINT,
    net_time BIGINT
);

-- Create table for female marathon participants
CREATE TABLE marathon_female (
    place BIGINT,
    div_tot VARCHAR(10),
    num BIGINT,
    person_name VARCHAR(100),
    age BIGINT,
    hometown VARCHAR(100),
    pace BIGINT,
    gun_time BIGINT,
    net_time BIGINT
);
 

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (1, '1/48', 9, 'Joshua Kemei', 22, 'Kenya .', 278, 1728, 1727);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (2, '2/48', 35, 'George Kirwa Misoi', 22, 'Kenya .', 282, 1728, 1727);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (3, '3/48', 3, 'Jacob Frey', 24, 'Oakton VA', 286, 1778, 1777);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (4, '1/96', 49, 'Gurmessa Kumsa', 27, 'Oxon Hill MD', 288, 1786, 1785);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (5, '4/48', 31, 'Mike Baird', 24, 'Ardmore PA', 295, 1874, 1878);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (6, '5/48', 1662, 'Jon Lauder', 23, 'Oakton VA', 302, 1872, 1879);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (7, '1/143', 11, 'Paul Rades', 33, 'Wheaton MD', 306, 1900, 1898);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (8, '6/48', 48, 'Haile Gelalcha', 20, 'Oxon Hill MD', 306, 1899, 1899);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (9, '2/96', 33, 'John Bitok', 26, 'Kenya .', 309, 1915, 1915);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (10, '1/45', 50, 'Dema Woyessa', 19, 'Oxon Hill MD', 314, 1950, 1950);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (11, '7/48', 711, 'Paris Caballero', 23, 'Gaithersburg MD', 314, 1953, 1951);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (12, '2/143', 3011, 'Troy Harrison', 30, 'Hustontown PA', 318, 1974, 1951);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (13, '3/143', 27, 'Albert Haan', 32, 'Washington DC', 318, 1977, 1976);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (14, '1/203', 825, 'Mike Colaiacovo', 36, 'Baltimore MD', 319, 1981, 1980);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (15, '1/201', 15, 'Mark Malander', 48, 'Herndon VA', 320, 1987, 1986);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (16, '2/203', 2299, 'Stavros Rologas', 37, 'Baltimore MD', 321, 1990, 1990);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (17, '2/45', 565, 'Nick Bax', 15, 'Bethesda MD', 322, 2001, 1998);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (18, '8/48', 405, 'Alvin Yew', 20, 'Silver Spring MD', 324, 2012, 2011);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (19, '4/143', 2656, 'Jason Tripp', 33, 'Ellicott City MD', 325, 2019, 2017);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (20, '1/132', 2135, 'Terry Permar', 51, 'Perkasie PA', 326, 2022, 2022);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (21, '3/203', 3013, 'David Mead', 37, 'Washington DC', 328, 2036, 2033);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (22, '1/214', 5, 'Darrell General', 40, 'Bowie MD', 329, 2043, 2042);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (23, '2/214', 1302, 'David Haaga', 44, 'Rockville MD', 330, 2051, 2050);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (24, '5/143', 3019, 'Andrew Cherviyot', 34, 'Beltsville MD', 332, 2064, 2063);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (25, '2/201', 41, 'George Buckheit', 48, 'Reson VA', 332, 2065, 2063);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (26, '3/45', 416, 'David Bernstein', 19, 'Chevy Chase MD', 332, 2064, 2063);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (27, '3/96', 1459, 'Andrew Jacobson', 28, 'Washington DC', 333, 2069, 2067);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (28, '2/132', 17, 'Dan Lawson', 50, 'Gaithersburg MD', 333, 2069, 2069);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (29, '4/45', 410, 'Cooper Linde', 18, 'York PA', 334, 2072, 2070);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (30, '5/45', 897, 'Neal Darmody', 16, 'Gaithersburg MD', 335, 2080, 2078);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (31, '3/214', 2628, 'Derik Thomas', 40, 'Alexandria VA', 335, 2082, 2081);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (32, '4/96', 1791, 'Stephen Majkrzak', 26, 'Olney MD', 339, 2104, 2102);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (33, '4/214', 1632, 'Ronald Kulik', 42, 'Herndon VA', 341, 2115, 2114);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (34, '6/143', 1552, 'David Kent', 34, 'Arlington VA', 341, 2118, 2116);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (35, '6/45', 3227, 'Sam Epstein', 16, 'Bethesda MD', 343, 2129, 2128);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (36, '9/48', 409, 'Justin Ahn', 20, 'Silver Spring MD', 343, 2129, 2128);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (37, '5/214', 922, 'Sheldon Degenhardt', 41, 'Marriottsville V', 343, 2131, 2128);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (38, '5/96', 3012, 'Craig Shearer', 25, 'Gaithersburg MD', 343, 2131, 2128);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (39, '7/143', 997, 'Steven Dowler', 31, 'Kensington MD', 343, 2134, 2130);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (40, '10/48', 576, 'William Bedford', 23, 'Bethesda MD', 343, 2137, 2131);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (41, '6/96', 3346, 'Ted Bradley', 27, 'Comus MD', 344, 2137, 2133);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (42, '6/214', 800, 'Antonio Claro', 44, 'Rockville MD', 344, 2138, 2137);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (43, '11/48', 418, 'Alex Hooke', 22, 'College Park MD', 345, 2141, 2140);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (44, '3/201', 1401, 'Marty Horan', 46, 'Gaithersburg MD', 346, 2148, 2146);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (45, '4/203', 1354, 'Stephen Hays', 38, 'University Park', 346, 2148, 2146);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (46, '8/143', 13, 'Christoph Dean', 31, 'Alexandria VA', 347, 2155, 2153);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (47, '7/96', 1084, 'Thomas Faucette', 29, 'Silver Spring MD', 348, 2165, 2162);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (48, '7/45', 2637, 'John O Thornton', 17, 'Columbia MD', 349, 2170, 2167);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (49, '12/48', 415, 'Paul Longoria', 20, 'College Park MD', 350, 2172, 2170);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (50, '7/214', 1457, 'Paul Jacobson', 43, 'Gaithersburg MD', 350, 2174, 2172);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (51, '4/201', 3242, 'Dennis Coleman', 48, 'Gaithersburg MD', 351, 2179, 2179);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (52, '13/48', 401, 'Aaron Macgray', 21, 'College Park MD', 351, 2183, 2181);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (53, '8/96', 1728, 'Leyi Lin', 26, 'Washington DC', 352, 2190, 2188);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (54, '8/45', 2096, 'Artem Panasenkov', 16, 'Gaithersburg MD', 354, 2202, 2199);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (55, '3/132', 896, 'Peter Darmody', 50, 'Gaithersburg MD', 355, 2203, 2201);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (56, '8/214', 1370, 'Ronald Hess', 44, 'Baltimore MD', 356, 2216, 2213);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (57, '9/96', 1548, 'Kevin Kemp', 27, 'Reston VA', 358, 2226, 2223);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (58, '5/201', 127, 'John Chall', 48, 'Jessup MD', 359, 2228, 2226);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (59, '6/201', 3292, 'Jack Morrison', 46, '.', 359, 2234, 2230);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (60, '9/45', 411, 'Mike Montano', 19, 'Rockville MD', 360, 2232, 2232);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (61, '9/214', 3216, 'Jonathan Auerbach', 42, 'Bethesda MD', 361, 2240, 2238);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (62, '1/73', 442, 'Richard Adams', 55, 'Herndon VA', 361, 2244, 2242);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (63, '7/201', 1293, 'Rafael Guijarro', 45, 'Pembroke Pines F', 362, 2250, 2248);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (64, '8/201', 3241, 'Alvino Castro', 46, 'Brookeville MD', 362, 2250, 2249);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (65, '10/214', 147, 'Terry Eickel', 44, 'Germantown MD', 362, 2254, 2250);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (66, '2/73', 1961, 'Timothy Morgan', 55, 'Damascus MD', 363, 2252, 2250);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (67, '5/203', 1845, 'Tom Matzke', 35, 'Rockville MD', 363, 2257, 2254);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (68, '1/50', 19, 'Patrick Griffith', 61, 'Alexandria VA', 364, 2259, 2259);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (69, '9/201', 3321, 'Oscar Ramirez', 48, 'Gaithersburg MD', 365, 2269, 2265);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (70, '9/143', 2657, 'Ken Trombatore', 33, 'Germantown MD', 366, 2274, 2270);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (71, '3/73', 29, 'Jim Wright', 56, 'Gaithersburg MD', 367, 2278, 2275);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (72, '4/73', 2327, 'Steve Ruckert', 56, 'Woodbine MD', 367, 2279, 2278);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (73, '10/96', 1015, 'Michael Dusenbery', 27, 'Savage MD', 367, 2279, 2278);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (74, '10/201', 1871, 'Weems Mcfadden', 48, 'Laurel MD', 367, 2281, 2280);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (75, '11/214', 1387, 'John Holland', 41, 'Philadelphia PA', 368, 2286, 2285);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (76, '10/45', 2061, 'Burke Oleszewski', 18, 'Bethesda MD', 368, 2288, 2287);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (77, '10/143', 2230, 'Chris Rankin', 34, 'Clarksburg MD', 368, 2292, 2287);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (78, '12/214', 2343, 'Alan Ryder', 42, 'Gaithersburg MD', 369, 2296, 2293);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (79, '4/132', 2725, 'Larry Washington', 54, 'Rockville MD', 369, 2296, 2293);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (80, '6/203', 3255, 'Kevin Odons', 36, 'Rockville MD', 370, 2302, 2297);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (81, '11/45', 2069, 'William Orndorff', 15, 'Rockville MD', 370, 2359, 2298);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (82, '11/201', 2985, 'Bill Stahr', 45, '.', 371, 2305, 2302);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (83, '11/143', 2757, 'Gregory Werner', 30, 'Glen Burnie MD', 372, 2311, 2308);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (84, '7/203', 2477, 'Keith Slonski', 36, 'Gaithersburg MD', 372, 2315, 2311);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (85, '12/201', 1274, 'Jeff Green', 46, 'Rockville MD', 372, 2314, 2311);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (86, '13/201', 2011, 'Greg Nelson', 45, 'Olney MD', 372, 2314, 2311);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (87, '5/132', 1867, 'Denis Mcdonald', 51, 'Woodbine MD', 374, 2323, 2319);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (88, '12/143', 2946, 'John Howard', 34, 'Brunswick MD', 375, 2327, 2325);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (89, '13/214', 835, 'Carleton Conant', 44, 'Kensington MD', 376, 2339, 2336);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (90, '14/48', 404, 'Erik Westlund', 21, 'College Park MD', 377, 2339, 2337);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (91, '14/214', 2192, 'Matthew Prineas', 41, 'Silver Spring MD', 377, 2347, 2343);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (92, '6/132', 2103, 'Joseph Parker', 50, 'Rockville MD', 378, 2351, 2347);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (93, '8/203', 1101, 'Dante Figueroa', 37, 'Washington DC', 378, 2413, 2348);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (94, '9/203', 2057, 'Frank Odeh', 37, 'Oak Hill VA', 380, 2365, 2362);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (95, '7/132', 3249, 'Vassili Triantos', 51, 'Rockville MD', 381, 2367, 2364);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (96, '10/203', 2763, 'Chris Doe', 37, 'Rockville MD', 382, 2375, 2370);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (97, '11/203', 178, 'Mark Krulikowski', 37, 'Arlington VA', 382, 2374, 2371);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (98, '12/45', 2587, 'Matthew Sushinsky', 15, 'Rockville MD', 383, 2379, 2375);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (99, '13/143', 2496, 'Tyson Smith', 31, 'Washington DC', 383, 2385, 2380);

INSERT INTO marathon_male (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES (100, '15/48', 402, 'Nick Fernandez', 22, 'College Park MD', 384, 2389, 2383);

INSERT INTO marathon_Female (place, div_tot, num, person_name, age, hometown, pace, gun_time, net_time)
VALUES
(1, '1/86', 30, 'Florence Jepkosgei', 22, 'Kenya .', 319, 1979, 1978),
(2, '2/86', 8, 'Eunice Chepkirui', 21, 'Kenya .', 321, 1994, 1993),
(3, '1/247', 3200, 'Elena Orlova', 36, 'Gaithersburg MD', 333, 2066, 2065),
(4, '1/173', 2, 'Susannah Kvasnicka', 34, 'Great Falls VA', 335, 2083, 2082),
(5, '1/142', 6, 'Casey Smith', 26, 'Arlington VA', 339, 2104, 2102),
(6, '1/110', 28, 'Lyubov Kremleva', 45, 'Russia .', 339, 2105, 2104),
(7, '2/173', 3040, 'Mary Jo Saunders', 31, 'Harrisonburg VA', 352, 2187, 2185),
(8, '3/86', 26, 'Erin Swain', 24, 'Clifton VA', 356, 2211, 2209),
(9, '4/86', 740, 'Cheryl Carr', 23, 'Arlington VA', 363, 2258, 2255),
(10, '1/26', 2062, 'Anya Oleynik', 17, 'Gaithersburg MD', 367, 2280, 2279),
(11, '2/247', 2674, 'Christy Underdonk', 37, 'Potomac MD', 370, 2298, 2295),
(12, '5/86', 1816, 'Erica Marrari', 24, 'College Park MD', 375, 2333, 2328),
(13, '2/142', 12, 'Eileen Kickish', 26, 'Washington DC', 376, 2339, 2336),
(14, '6/86', 1060, 'Kristen Ettensohn', 23, 'Bethesda MD', 380, 2362, 2359),
(15, '2/110', 834, 'Cindy Conant', 45, 'Kensington MD', 382, 2376, 2374),
(16, '2/26', 3266, 'Amanda Robotti', 18, 'College Park MD', 383, 2379, 2374),
(17, '1/173', 2013, 'Laura Nelson', 40, 'Woodstock VA', 384, 2388, 2385),
(18, '3/173', 790, 'Connie Chow Dowler', 31, 'Kensington MD', 385, 2396, 2391),
(19, '2/173', 1596, 'Sheryl Kline', 43, 'Arnold MD', 387, 2408, 2405),
(20, '3/247', 2127, 'Paula Pels', 38, 'Bethesda MD', 391, 2429, 2424),
(21, '4/247', 1441, 'Jane Inglese', 36, 'Bethesda MD', 391, 2431, 2428),
(22, '3/26', 413, 'Aisling Gardner', 19, 'College Park MD', 393, 2443, 2439),
(23, '1/76', 2581, 'Alison Suckling', 50, 'Arnold MD', 393, 2444, 2442),
(24, '3/110', 2940, 'Liliana Baron', 47, 'Potomac MD', 394, 2446, 2443),
(25, '3/142', 1736, 'Caroline Little', 25, 'Washington DC', 394, 2450, 2444),
(26, '3/173', 14, 'Helen Beven', 40, 'Kensington MD', 398, 2470, 2469),
(27, '4/26', 3228, 'Michele Levy', 18, 'Gaithersburg MD', 401, 2493, 2491),
(28, '4/173', 1039, 'Nicola Elliott', 40, 'Vienna VA', 402, 2497, 2493),
(29, '4/173', 2037, 'Elisa Norris', 30, 'Rockville MD', 404, 2515, 2510),
(30, '5/247', 163, 'Stephanie Hammond', 38, 'Springfield VA', 405, 2520, 2516),
(31, '5/173', 2153, 'Emily Pierce', 30, 'Silver Spring MD', 405, 2523, 2516),
(32, '6/247', 481, 'Alida Anderson', 36, 'Bethesda MD', 407, 2587, 2524),
(33, '5/173', 1764, 'Jeannette Lussi', 43, 'Kensington MD', 408, 2595, 2533),
(34, '7/86', 1852, 'Marycolle Mcallister', 22, 'Silver Spring MD', 409, 2604, 2539),
(35, '6/173', 676, 'Christine Brophy', 41, 'Mongtomery Vill', 411, 2614, 2553),
(36, '5/26', 618, 'Erin Bliss', 17, 'Woodbridge VA', 413, 2568, 2563),
(37, '8/86', 2010, 'Megan Nechanicky', 24, 'Montgomery Vill', 414, 2574, 2568),
(38, '7/247', 1561, 'Christina Kichula', 35, 'Silver Spring MD', 415, 2640, 2578),
(39, '8/247', 3335, 'Kim Chenen', 36, 'Leesburg VA', 416, 2590, 2585),
(40, '6/173', 2498, 'Cheryl Smoker', 31, 'Rockville MD', 421, 2679, 2612),
(41, '2/76', 2578, 'Amy Subar', 50, 'Potomac MD', 422, 2687, 2618),
(42, '7/173', 1875, 'Michele Mcgleish', 40, 'Germantown MD', 422, 2699, 2619),
(43, '9/247', 571, 'Michelle Beard', 36, 'Montgomery Vill', 422, 2686, 2619),
(44, '8/173', 555, 'Sarah Barpoulis', 41, 'Potomac MD', 422, 2688, 2622),
(45, '4/142', 2577, 'Sarah Stup', 25, 'Rockville MD', 423, 2688, 2626),
(46, '10/247', 2727, 'Paige Waterman', 38, 'Silver Spring MD', 424, 2701, 2631),
(47, '4/110', 113, 'Beverly Black', 45, 'Frederick MD', 424, 2635, 2632),
(48, '7/173', 2625, 'Kimberley Thomas', 31, 'Rockville MD', 426, 2708, 2646),
(49, '6/26', 407, 'Clairice Ahn', 19, 'College Park MD', 428, 2728, 2656),
(50, '9/86', 2663, 'Elizabeth Tullberg', 24, 'Bethesda MD', 428, 2842, 2659),
(51, '11/247', 1822, 'Lisa Martin', 36, 'Brookeville MD', 428, 2664, 2660),
(52, '9/173', 42, 'Susan Pereles', 42, 'Potomac MD', 429, 2669, 2664),
(53, '12/247', 1997, 'Andrea Myers', 37, 'Bethesda MD', 429, 2733, 2664),
(54, '5/142', 180, 'Katherine Lee', 28, 'Bethesda MD', 432, 2750, 2684),
(55, '13/247', 642, 'Angelique Bosse', 38, 'Rockville MD', 433, 2691, 2687),
(56, '10/173', 2993, 'Laura Gurney', 41, 'Bethesda MD', 433, 2752, 2689),
(57, '5/110', 1180, 'Paula Galliani', 46, 'Gaithersbur MD', 433, 2694, 2691),
(58, '14/247', 818, 'Cindy Cohen', 38, 'Washington DC', 434, 2755, 2693),
(59, '7/26', 1655, 'Krisztina Larson', 19, 'Silver Spring MD', 435, 2763, 2699),
(60, '8/173', 138, 'Patricia Darrah', 33, 'Washington DC', 436, 2782, 2704),
(61, '6/142', 1234, 'Laura Gittleson', 29, 'Rockville MD', 436, 2780, 2709),
(62, '1/28', 152, 'Alice Franks', 57, 'Rockville MD', 437, 2716, 2711),
(63, '15/247', 1979, 'Kristina Muldoon', 35, 'Bethesda MD', 437, 2896, 2712),
(64, '8/26', 973, 'Linh-Yen Do', 19, 'Gaithersburg MD', 437, 2719, 2713),
(65, '10/86', 3033, 'Sarah Ramsey', 24, 'Arlington VA', 439, 2793, 2725),
(66, '11/86', 2039, 'Rebecca Novinsky', 22, 'Ellcott City MD', 440, 2814, 2732),
(67, '16/247', 3341, 'Joy Langford', 36, 'Bethesda MD', 440, 2796, 2732),
(68, '6/110', 16, 'Sarah Buckheit', 45, 'Reson VA', 441, 2739, 2737),
(69, '11/173', 2505, 'Anna Soevik', 40, 'Bethesda MD', 441, 2828, 2741),
(70, '12/86', 1106, 'Kate Finn', 24, 'Bethesda MD', 442, 2806, 2744),
(72, '12/173', 474, 'Leslie Anchor', 43, 'Rockville MD', 443, 2820, 2748),
(73, '17/247', 659, 'Melissa Brault', 39, 'Brookeville MD', 444, 2841, 2758),
(74, '13/173', 3323, 'Deborah Arnold', 42, 'Bethesda MD', 445, 2835, 2761),
(75, '14/173', 1704, 'Robin Lerner', 43, 'Bethesda MD', 445, 2836, 2761),
(76, '9/173', 1966, 'Leilani Morton', 31, 'Fairfax VA', 445, 2826, 2761),
(77, '18/247', 1616, 'Stephanie Kramer', 37, 'New Market MD', 445, 2831, 2762),
(78, '10/173', 2074, 'Meshelle Osborne', 32, 'Chicago IL', 445, 2850, 2764),
(79, '11/173', 1883, 'Megan Mckenzie', 30, 'Rockville MD', 446, 2829, 2766),
(80, '1/19', 864, 'Chris Craun', 60, 'Bethesda MD', 446, 2952, 2767),
(81, '7/110', 1798, 'Janis Maloney', 48, 'Silver Spring MD', 446, 2774, 2770),
(82, '13/86', 1300, 'Rebecca Guzman', 22, 'Ijamsville MD', 446, 2837, 2771),
(83, '3/76', 1049, 'Carol English', 51, 'Germantown MD', 447, 2850, 2772),
(84, '8/142', 2591, 'Tansy Szeliga', 28, 'Gaithersburg MD', 448, 2869, 2780),
(86, '19/247', 128, 'Janet Choi', 36, 'Oakton VA', 448, 2847, 2782),
(87, '10/142', 979, 'Connie Dodmead', 28, 'Rockville MD', 448, 2869, 2782),
(88, '20/247', 1762, 'Janice Lunenfeld', 36, 'Rockville MD', 448, 2856, 2784),
(89, '15/173', 524, 'Debbie Austin', 41, 'Kensington MD', 449, 3019, 2788),
(90, '21/247', 215, 'Karen Strykul', 36, 'Arlington VA', 449, 2858, 2789),
(91, '11/142', 1774, 'Melissa Macdermid', 28, 'High Point NC', 449, 2863, 2790),
(92, '16/173', 2994, 'Heather Chen-Mayer', 44, 'Garret Park MD', 450, 2866, 2791),
(93, '22/247', 2685, 'Andrea Varea', 36, 'Bethesda MD', 450, 2856, 2791),
(94, '23/247', 2802, 'Amy Wolverton', 35, 'Washington DC', 450, 2858, 2791),
(95, '8/110', 1634, 'Ann Kurzweil', 47, 'Great Falls VA', 450, 2881, 2791),
(96, '9/26', 1352, 'Whitney Hayre', 19, 'Olney MD', 450, 3094, 2794),
(97, '24/247', 1967, 'Valerie Moser', 39, 'Baltimore MD', 450, 2860, 2796),
(98, '9/110', 490, 'Sherry Ansher', 49, 'Bethesda MD', 450, 2862, 2796),
(99, '25/247', 2038, 'Liz Notter', 39, 'Gaithersburg MD', 451, 2870, 2803),
(100, '12/142', 646, 'Jenny Boyd', 28, 'Germantown MD', 452, 2891, 2805);
select * from marathon_male;
select * from marathon_female ;

--In a marathon, gun time is counted from the moment of the formal start of the race while net time is counted from the moment a runner crosses a starting line. Both variables are in seconds.
--You are asked to check if the interval between the two times is different for male and female runners. First, calculate the average absolute difference between the gun time and net time.
--Group the results by available genders (male and female). Output the absolute difference between those two values.



with male as(
   select  avg(abs(gun_time - net_time))  as avg_male from marathon_male
), 
female as(
   select  avg(abs(gun_time - net_time))  as avg_female from marathon_female
)
select abs(avg_male -avg_female ) as diff from male , female 