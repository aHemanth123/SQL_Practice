--Find Students At Median Writing


--Last Updated: March 2025

--General Assembly
--Kaplan
--Google
--Medium
--ID 9610


create database Sat;

use Sat;

CREATE TABLE student_scores (
    school VARCHAR(50),
    teacher VARCHAR(50),
    student_id INT,
    sat_writing INT,
    sat_verbal INT,
    sat_math INT,
    hrs_studied INT,
    id INT,
    average_sat INT,
    love VARCHAR(50)
);


INSERT INTO student_scores (school, teacher, student_id, sat_writing, sat_verbal, sat_math, hrs_studied, id, average_sat, love)
VALUES
('Washington HS', 'Frederickson', 1, 583, 307, 528, 190, 1, 583, NULL),
('Washington HS', 'Frederickson', 2, 401, 791, 248, 149, 2, 401, NULL),
('Washington HS', 'Frederickson', 3, 523, 445, 756, 166, 3, 523, NULL),
('Washington HS', 'Frederickson', 4, 306, 269, 327, 137, 4, 306, NULL),
('Washington HS', 'Frederickson', 5, 300, 539, 743, 115, 5, 300, NULL),
('Washington HS', 'Frederickson', 6, 213, 500, 771, 173, 6, 213, NULL),
('Washington HS', 'Frederickson', 7, 548, 683, 740, 47, 7, 548, NULL),
('Washington HS', 'Frederickson', 8, 314, 503, 341, 174, 8, 314, NULL),
('Washington HS', 'Frederickson', 9, 401, 630, 666, 111, 9, 401, NULL),
('Washington HS', 'Frederickson', 10, 532, 683, 316, 134, 10, 532, NULL),
('Washington HS', 'Frederickson', 11, 654, 422, 350, 118, 11, 654, NULL),
('Washington HS', 'Frederickson', 12, 642, 287, 282, NULL, 12, 642, NULL),
('Washington HS', 'Frederickson', 13, 424, 230, 393, 111, 13, 424, NULL),
('Washington HS', 'Spellman', 14, 481, 710, 681, 175, 14, 481, NULL),
('Washington HS', 'Spellman', 15, 569, 286, 268, 118, 15, 569, NULL),
('Washington HS', 'Spellman', 16, 399, 290, 248, 195, 16, 399, NULL),
('Washington HS', 'Spellman', 17, 353, 308, 231, 4, 17, 353, NULL),
('Washington HS', 'Spellman', 18, 502, 292, 264, 94, 18, 502, NULL),
('Washington HS', 'Spellman', 19, 799, 406, 247, 178, 19, 799, NULL),
('Washington HS', 'Spellman', 20, 451, 690, 238, 51, 20, 451, NULL),
('Washington HS', 'Spellman', 21, 624, 331, 796, 71, 21, 624, NULL),
('Washington HS', 'Spellman', 22, 481, 608, 420, 124, 22, 481, NULL),
('Washington HS', 'Spellman', 23, 406, 724, 518, 97, 23, 406, NULL),
('Washington HS', 'Spellman', 24, 206, 709, 615, 38, 24, 206, NULL),
('Washington HS', 'Spellman', 25, 502, 291, 716, NULL, 25, 502, NULL),
('Washington HS', 'Spellman', 26, 333, 478, 603, 106, 26, 333, NULL),
('Washington HS', 'Spellman', 27, 661, 782, 393, 89, 27, 661, NULL),
('Washington HS', 'Spellman', 28, 254, 630, 629, 118, 28, 254, NULL),
('Washington HS', 'Spellman', 29, 378, 363, 750, 34, 29, 378, NULL),
('Washington HS', 'Spellman', 30, 690, 692, 363, 13, 30, 690, NULL),
('Washington HS', 'Spellman', 31, 600, 545, 314, 65, 31, 600, NULL),
('Petersville HS', 'Davis', 32, 635, 743, 695, 161, 32, 635, NULL),
('Petersville HS', 'Davis', 33, 756, 595, 427, NULL, 33, 756, NULL),
('Petersville HS', 'Davis', 34, 627, 429, 541, 37, 34, 627, NULL),
('Petersville HS', 'Davis', 35, 304, 780, 516, 145, 35, 304, NULL),
('Petersville HS', 'Davis', 36, 346, 337, 435, 172, 36, 346, NULL),
('Petersville HS', 'Davis', 37, 533, 438, 494, 21, 37, 533, NULL),
('Petersville HS', 'Davis', 38, 779, 656, 724, NULL, 38, 779, NULL),
('Petersville HS', 'Davis', 39, 502, 368, 639, 23, 39, 502, NULL),
('Petersville HS', 'Davis', 40, 513, 614, 780, 186, 40, 513, NULL),
('Petersville HS', 'Davis', 41, 664, 439, 472, 49, 41, 664, NULL),
('Petersville HS', 'Davis', 42, 431, 427, 454, 109, 42, 431, NULL),
('Petersville HS', 'Davis', 43, 426, 470, 448, 184, 43, 426, NULL),
('Petersville HS', 'Davis', 44, 376, 330, 724, 17, 44, 376, NULL),
('Petersville HS', 'Brown', 45, 564, 402, 319, 120, 45, 564, NULL),
('Petersville HS', 'Brown', 46, 797, 392, 337, 101, 46, 797, NULL),
('Petersville HS', 'Brown', 47, 495, 214, 531, 166, 47, 495, NULL),
('Petersville HS', 'Brown', 48, 426, 745, 314, 163, 48, 426, NULL),
('Petersville HS', 'Brown', 49, 322, 369, 531, 157, 49, 322, NULL),
('Petersville HS', 'Brown', 50, 794, 732, 519, 102, 50, 794, NULL),
('Petersville HS', 'Brown', 51, 540, 517, 347, 197, 51, 540, NULL),
('Petersville HS', 'Brown', 52, 640, 600, 699, 27, 52, 640, NULL),
('Petersville HS', 'Brown', 53, 436, 321, 679, 63, 53, 436, NULL),
('Petersville HS', 'Brown', 54, 303, 235, 506, 100, 54, 303, NULL),
('Petersville HS', 'Brown', 55, 531, 380, 325, 95, 55, 531, NULL),
('Petersville HS', 'Brown', 56, 245, 378, 678, 62, 56, 245, NULL),
('Petersville HS', 'Brown', 57, 552, 597, 669, 72, 57, 552, NULL),
('Petersville HS', 'Brown', 58, 457, 599, 275, 162, 58, 457, NULL),
('Petersville HS', 'Brown', 59, 318, 377, 603, 130, 59, 318, NULL),
('Petersville HS', 'Brown', 60, 431, 314, 205, 15, 60, 431, NULL),
('Petersville HS', 'Brown', 61, 315, 520, 719, 142, 61, 315, NULL),
('Petersville HS', 'Perry', 62, 793, 365, 240, 140, 62, 793, NULL),
('Petersville HS', 'Perry', 63, 529, 623, 239, 23, 63, 529, NULL),
('Petersville HS', 'Perry', 64, 322, 385, 765, 95, 64, 322, NULL),
('Petersville HS', 'Perry', 65, 481, 697, 594, 19, 65, 481, NULL),
('Petersville HS', 'Perry', 66, 725, 646, 216, 196, 66, 725, NULL),
('Petersville HS', 'Perry', 67, 668, 738, 256, 17, 67, 668, NULL),
('Petersville HS', 'Perry', 68, 648, 336, 216, 40, 68, 648, NULL),
('Petersville HS', 'Perry', 69, 695, 545, 201, 52, 69, 695, NULL),
('Petersville HS', 'Perry', 70, 550, 669, 651, 161, 70, 550, NULL),
('Petersville HS', 'Perry', 71, 649, 654, 636, NULL, 71, 649, NULL),
('Petersville HS', 'Perry', 72, 264, 210, 545, 51, 72, 264, NULL),
('Petersville HS', 'Perry', 73, 430, 707, 739, 56, 73, 430, NULL),
('Petersville HS', 'Perry', 74, 647, 656, 669, 47, 74, 647, NULL),
('Petersville HS', 'Perry', 75, 271, 587, 504, 187, 75, 271, NULL),
('Petersville HS', 'Perry', 76, 637, 435, 240, 65, 76, 637, NULL),
('Petersville HS', 'Perry', 77, 677, 371, 509, 55, 77, 677, NULL),
('Petersville HS', 'Perry', 78, 311, 396, 552, 108, 78, 311, NULL),
('Petersville HS', 'Perry', 79, 615, 681, 633, 194, 79, 615, NULL),
('Petersville HS', 'Perry', 80, 738, 313, 580, 67, 80, 738, NULL),
('Petersville HS', 'Perry', 81, 608, 584, 580, 93, 81, 608, NULL),
('Petersville HS', 'Perry', 82, 518, 799, 730, 10, 82, 518, NULL),
('Petersville HS', 'Perry', 83, 649, 200, 586, 86, 83, 649, NULL),
('Petersville HS', 'Perry', 84, 747, 290, 729, 144, 84, 747, NULL),
('St. John''s', 'Rajaram', 85, 395, 495, 649, 197, 85, 395, NULL),
('St. John''s', 'Rajaram', 86, 360, 359, 651, 30, 86, 360, NULL),
('St. John''s', 'Rajaram', 87, 697, 798, 767, 187, 87, 697, NULL),
('St. John''s', 'Rajaram', 88, 211, 441, 667, 199, 88, 211, NULL),
('St. John''s', 'Rajaram', 89, 563, 488, 236, 47, 89, 563, NULL),
('St. John''s', 'Rajaram', 90, 268, 288, 359, 51, 90, 268, NULL),
('St. John''s', 'Rajaram', 91, 394, 214, 735, 191, 91, 394, NULL),
('St. John''s', 'Rajaram', 92, 242, 471, 350, 83, 92, 242, NULL),
('St. John''s', 'Rajaram', 93, 324, 649, 509, 85, 93, 324, NULL),
('St. John''s', 'Rajaram', 94, 742, 604, 629, 82, 94, 742, NULL),
('St. John''s', 'Rajaram', 95, 686, 708, 489, 88, 95, 686, NULL),
('St. John''s', 'Rajaram', 96, 365, 266, 762, 181, 96, 365, NULL),
('St. John''s', 'Rajaram', 97, 413, 344, 718, 52, 97, 413, NULL),
('St. John''s', 'Rajaram', 98, 785, 237, 383, 90, 98, 785, NULL),
('St. John''s', 'Rajaram', 99, 667, 541, 510, 74, 99, 667, NULL),
('St. John''s', 'Rajaram', 100, 512, 614, 481, 183, 100, 512, NULL),
('St. John''s', 'Rajaram', 101, 407, 535, 312, 0, 101, 407, NULL),
('St. John''s', 'Rajaram', 102, 208, 295, 682, 163, 102, 208, NULL),
('St. John''s', 'Rajaram', 103, 759, 316, 477, 96, 103, 759, NULL),
('St. John''s', 'Rajaram', 104, 458, 432, 268, 55, 104, 458, NULL),
('St. John''s', 'Williams', 105, 669, 316, 409, 9, 105, 669, NULL),
('St. John''s', 'Williams', 106, 521, 722, 591, 8, 106, 521, NULL),
('St. John''s', 'Williams', 107, 220, 597, 667, 147, 107, 220, NULL),
('St. John''s', 'Williams', 108, 780, 447, 345, 51, 108, 780, NULL),
('St. John''s', 'Williams', 109, 512, 242, 357, 67, 109, 512, NULL),
('St. John''s', 'Williams', 110, 246, 698, 223, 91, 110, 246, NULL),
('St. John''s', 'Williams', 111, 581, 617, 613, 102, 111, 581, NULL),
('St. John''s', 'Williams', 112, 303, 208, 427, 15, 112, 303, NULL),
('St. John''s', 'Williams', 113, 512, 559, 686, 197, 113, 512, NULL),
('St. John''s', 'Williams', 114, 636, 402, 201, 157, 114, 636, NULL),
('St. John''s', 'Williams', 115, 541, 453, 704, 193, 115, 541, NULL),
('St. John''s', 'Williams', 116, 457, 406, 723, 20, 116, 457, NULL),
('St. John''s', 'Williams', 117, 514, 769, 385, 101, 117, 514, NULL),
('St. John''s', 'Williams', 118, 578, 492, 797, 57, 118, 578, NULL),
('St. John''s', 'Williams', 119, 539, 639, 741, 93, 119, 539, NULL),
('St. John''s', 'Williams', 120, 213, 633, 248, 8, 120, 213, NULL),
('St. John''s', 'Tran', 121, 423, 393, 718, 102, 121, 423, NULL),
('St. John''s', 'Tran', 122, 598, 470, 729, 129, 122, 598, NULL),
('St. John''s', 'Tran', 123, 671, 570, 410, 152, 123, 671, NULL),
('St. John''s', 'Tran', 124, 454, 624, 739, 149, 124, 454, NULL),
('St. John''s', 'Tran', 125, 741, 644, 702, 199, 125, 741, NULL),
('St. John''s', 'Tran', 126, 593, 239, 626, 46, 126, 593, NULL),
('St. John''s', 'Tran', 127, 266, 789, 481, NULL, 127, 266, NULL),
('St. John''s', 'Tran', 128, 560, 493, 605, 92, 128, 560, NULL),
('St. John''s', 'Tran', 129, 382, 365, 501, NULL, 129, 382, NULL),
('St. John''s', 'Tran', 130, 702, 505, 455, 47, 130, 702, NULL),
('St. John''s', 'Tran', 131, 242, 697, 708, 45, 131, 242, NULL),
('St. John''s', 'Tran', 132, 619, 742, 718, 156, 132, 619, NULL),
('St. John''s', 'Tran', 133, 464, 698, 604, 200, 133, 464, NULL),
('St. John''s', 'Tran', 134, 344, 351, 510, 12, 134, 344, NULL),
('St. John''s', 'Tran', 135, 471, 419, 624, 12, 135, 471, NULL);

select * from student_scores;

--Identify the IDs of students who scored exactly at the median for the SAT writing section.

--1 
WITH MedianCalculation AS (
    SELECT
        PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY sat_writing) OVER () AS median_sat_writing  
		-- Perccentile_cnt(0.5) -> returns the value that separates the higher half from the lower half of a dataset,
    FROM student_scores
) 

SELECT
    id
FROM student_scores
WHERE sat_writing = (SELECT DISTINCT median_sat_writing FROM MedianCalculation);



--2  solution according to hints 
WITH RankedScores AS (
    SELECT
        id,
        sat_writing,
        ROW_NUMBER() OVER (ORDER BY sat_writing) AS row_num,  -- sort	
        COUNT(*) OVER () AS total_count                    -- total count 
    FROM student_scores
)  ,
MedianCalculation AS (
    SELECT
        sat_writing AS median_sat_writing
    FROM RankedScores
    WHERE row_num IN (
        FLOOR((total_count + 1) / 2.0),
        CEILING((total_count + 1) / 2.0)
    )
) 
SELECT
    id
FROM student_scores
WHERE sat_writing = (SELECT median_sat_writing FROM MedianCalculation);