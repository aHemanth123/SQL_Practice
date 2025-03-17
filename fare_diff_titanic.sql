--Find fare differences on the Titanic using a self join


--Last Updated: February 2025

--LinkedIn
--Google
--Hard
--ID 9603


CREATE DATABASE titanic;

USE titanic;

CREATE TABLE passengers (
    passengerid BIGINT ,
    survived BIGINT,
    pclass BIGINT,
    name VARCHAR(255),
    sex VARCHAR(10),
    age FLOAT,
    sibsp BIGINT,
    parch BIGINT,
    ticket VARCHAR(50),
    fare FLOAT,
    cabin VARCHAR(50),
    embarked VARCHAR(10)
);
 INSERT INTO passengers (passengerid, survived, pclass, name, sex, age, sibsp, parch, ticket, fare, cabin, embarked) VALUES
(1, 0, 3, 'Braund, Mr. Owen Harris', 'male', 22, 1, 0, 'A/5 21171', 7.25, NULL, 'S'),
(2, 1, 1, 'Cumings, Mrs. John Bradley (Florence Briggs Thayer)', 'female', 38, 1, 0, 'PC 17599', 71.28, 'C85', 'C'),
(3, 1, 3, 'Heikkinen, Miss. Laina', 'female', 26, 0, 0, 'STON/O2. 3101282', 7.92, NULL, 'S'),
(4, 1, 1, 'Futrelle, Mrs. Jacques Heath (Lily May Peel)', 'female', 35, 1, 0, '113803', 53.10, 'C123', 'S'),
(5, 0, 3, 'Allen, Mr. William Henry', 'male', 35, 0, 0, '373450', 8.05, NULL, 'S'),
(6, 0, 3, 'Moran, Mr. James', 'male', NULL, 0, 0, '330877', 8.46, NULL, 'Q'),
(7, 0, 1, 'McCarthy, Mr. Timothy J', 'male', 54, 0, 0, '17463', 51.86, 'E46', 'S'),
(8, 0, 3, 'Palsson, Master. Gosta Leonard', 'male', 2, 3, 1, '349909', 21.07, NULL, 'S'),
(9, 1, 3, 'Johnson, Mrs. Oscar W (Elisabeth Vilhelmina Berg)', 'female', 27, 0, 2, '347742', 11.13, NULL, 'S'),
(10, 1, 2, 'Nasser, Mrs. Nicholas (Adele Achem)', 'female', 14, 1, 0, '237736', 30.07, NULL, 'C'),
(11, 1, 3, 'Sandstrom, Miss. Marguerite Rut', 'female', 4, 1, 1, 'PP 9549', 16.7, 'G6', 'S'),
(12, 1, 1, 'Bonnell, Miss. Elizabeth', 'female', 58, 0, 0, '113783', 26.55, 'C103', 'S'),
(13, 0, 3, 'Saundercock, Mr. William Henry', 'male', 20, 0, 0, 'A/5. 2151', 8.05, NULL, 'S'),
(14, 0, 3, 'Andersson, Mr. Anders Johan', 'male', 39, 1, 5, '347082', 31.27, NULL, 'S'),
(15, 0, 3, 'Vestrom, Miss. Hulda Amanda Adolfina', 'female', 14, 0, 0, '350406', 7.85, NULL, 'S'),
(16, 1, 2, 'Hewlett, Mrs. (Mary D Kingcome)', 'female', 55, 0, 0, '248706', 16, NULL, 'S'),
(17, 0, 3, 'Rice, Master. Eugene', 'male', 2, 4, 1, '382652', 29.12, NULL, 'Q'),
(18, 1, 2, 'Williams, Mr. Charles Eugene', 'male', NULL, 0, 0, '244373', 13, NULL, 'S'),
(19, 0, 3, 'Vander Planke, Mrs. Julius (Emelia Maria Vandemoortele)', 'female', 31, 1, 0, '345763', 18, NULL, 'S'),
(20, 1, 3, 'Masselmani, Mrs. Fatima', 'female', NULL, 0, 0, '2649', 7.22, NULL, 'C'),
(21, 0, 2, 'Fynney, Mr. Joseph J', 'male', 35, 0, 0, '239865', 26, NULL, 'S'),
(22, 1, 2, 'Beesley, Mr. Lawrence', 'male', 34, 0, 0, '248698', 13, 'D56', 'S'),
(23, 1, 3, 'McGowan, Miss. Anna "Annie"', 'female', 15, 0, 0, '330923', 8.03, NULL, 'Q'),
(24, 1, 1, 'Sloper, Mr. William Thompson', 'male', 28, 0, 0, '113788', 35.5, 'A6', 'S'),
(25, 0, 3, 'Palsson, Miss. Torborg Danira', 'female', 8, 3, 1, '349909', 21.07, NULL, 'S'),
(26, 1, 3, 'Asplund, Mrs. Carl Oscar (Selma Augusta Emilia Johansson)', 'female', 38, 1, 5, '347077', 31.39, NULL, 'S'),
(27, 0, 3, 'Emir, Mr. Farred Chehab', 'male', NULL, 0, 0, '2631', 7.22, NULL, 'C'),
(28, 0, 1, 'Fortune, Mr. Charles Alexander', 'male', 19, 3, 2, '19950', 263, 'C23 C25 C27', 'S'),
(29, 1, 3, 'O''Dwyer, Miss. Ellen "Nellie"', 'female', NULL, 0, 0, '330959', 7.88, NULL, 'Q'),
(30, 0, 3, 'Todoroff, Mr. Lalio', 'male', NULL, 0, 0, '349216', 7.9, NULL, 'S'),
(31, 0, 1, 'Uruchurtu, Don. Manuel E', 'male', 40, 0, 0, 'PC 17601', 27.72, NULL, 'C'),
(32, 1, 1, 'Spencer, Mrs. William Augustus (Marie Eugenie)', 'female', NULL, 1, 0, 'PC 17569', 146.52, 'B78', 'C'),
(33, 1, 3, 'Glynn, Miss. Mary Agatha', 'female', NULL, 0, 0, '335677', 7.75, NULL, 'Q'),
(34, 0, 2, 'Wheadon, Mr. Edward H', 'male', 66, 0, 0, 'C.A. 24579', 10.5, NULL, 'S'),
(35, 0, 1, 'Meyer, Mr. Edgar Joseph', 'male', 28, 1, 0, 'PC 17604', 82.17, NULL, 'C'),
(36, 0, 1, 'Holverson, Mr. Alexander Oskar', 'male', 42, 1, 0, '113789', 52, NULL, 'S'),
(37, 1, 3, 'Mamee, Mr. Hanna', 'male', NULL, 0, 0, '2677', 7.23, NULL, 'C'),
(38, 0, 3, 'Cann, Mr. Ernest Charles', 'male', 21, 0, 0, 'A./5. 2152', 8.05, NULL, 'S'),
(39, 0, 3, 'Vander Planke, Miss. Augusta Maria', 'female', 18, 2, 0, '345764', 18, NULL, 'S'),
(40, 1, 3, 'Nicola-Yarred, Miss. Jamila', 'female', 14, 1, 0, '2651', 11.24, NULL, 'C'),
(41, 0, 3, 'Ahlin, Mrs. Johan (Johanna Persdotter Larsson)', 'female', 40, 1, 0, '7546', 9.47, NULL, 'S'),
(42, 0, 2, 'Turpin, Mrs. William John Robert (Dorothy Ann Wonnacott)', 'female', 27, 1, 0, '11668', 21, NULL, 'S'),
(43, 0, 3, 'Kraeff, Mr. Theodor', 'male', NULL, 0, 0, '349253', 7.9, NULL, 'C'),
(44, 1, 2, 'Laroche, Miss. Simonne Marie Anne Andree', 'female', 3, 1, 2, 'SC/Paris 2123', 41.58, NULL, 'C'),
(45, 1, 3, 'Devaney, Miss. Margaret Delia', 'female', 19, 0, 0, '330958', 7.88, NULL, 'Q'),
(46, 0, 3, 'Rogers, Mr. William John', 'male', NULL, 0, 0, 'S.C./A.4. 23567', 8.05, NULL, 'S'),
(47, 0, 3, 'Lennon, Mr. Denis', 'male', NULL, 1, 0, '370371', 15.5, NULL, 'Q'),
(48, 1, 3, 'O''Driscoll, Miss. Bridget', 'female', NULL, 0, 0, '14311', 7.75, NULL, 'Q'),
(49, 0, 3, 'Samaan, Mr. Youssef', 'male', NULL, 2, 0, '2662', 21.68, NULL, 'C'),
(50, 0, 3, 'Arnold-Franchi, Mrs. Josef (Josefine Franchi)', 'female', 18, 1, 0, '349237', 17.8, NULL, 'S'),
(51, 0, 3, 'Panula, Master. Juha Niilo', 'male', 7, 4, 1, '3101295', 39.69, NULL, 'S'),
(52, 0, 3, 'Nosworthy, Mr. Richard Cater', 'male', 21, 0, 0, 'A/4. 39886', 7.8, NULL, 'S'),
(53, 1, 1, 'Harper, Mrs. Henry Sleeper (Myna Haxtun)', 'female', 49, 1, 0, 'PC 17572', 76.73, 'D33', 'C'),
(54, 1, 2, 'Faunthorpe, Mrs. Lizzie (Elizabeth Anne Wilkinson)', 'female', 29, 1, 0, '2926', 26, NULL, 'S'),
(55, 0, 1, 'Ostby, Mr. Engelhart Cornelius', 'male', 65, 0, 1, '113509', 61.98, 'B30', 'C'),
(56, 1, 1, 'Woolner, Mr. Hugh', 'male', NULL, 0, 0, '19947', 35.5, 'C52', 'S'),
(57, 1, 2, 'Rugg, Miss. Emily', 'female', 21, 0, 0, 'C.A. 31026', 10.5, NULL, 'S'),
(58, 0, 3, 'Novel, Mr. Mansouer', 'male', 28.5, 0, 0, '2697', 7.23, NULL, 'C'),
(59, 1, 2, 'West, Miss. Constance Mirium', 'female', 5, 1, 2, 'C.A. 34651', 27.75, NULL, 'S'),
(60, 0, 3, 'Goodwin, Master. William Frederick', 'male', 11, 5, 2, 'CA 2144', 46.9, NULL, 'S'),
(61, 0, 3, 'Sirayanian, Mr. Orsen', 'male', 22, 0, 0, '2669', 7.23, NULL, 'C'),
(62, 1, 1, 'Icard, Miss. Amelie', 'female', 38, 0, 0, '113572', 80, 'B28', NULL),
(63, 0, 1, 'Harris, Mr. Henry Birkhardt', 'male', 45, 1, 0, '36973', 83.47, 'C83', 'S'),
(64, 0, 3, 'Skoog, Master. Harald', 'male', 4, 3, 2, '347088', 27.9, NULL, 'S'),
(65, 0, 1, 'Stewart, Mr. Albert A', 'male', NULL, 0, 0, 'PC 17605', 27.72, NULL, 'C'),
(66, 1, 3, 'Moubarek, Master. Gerios', 'male', NULL, 1, 1, '2661', 15.25, NULL, 'C'),
(67, 1, 2, 'Nye, Mrs. (Elizabeth Ramell)', 'female', 29, 0, 0, 'C.A. 29395', 10.5, 'F33', 'S'),
(68, 0, 3, 'Crease, Mr. Ernest James', 'male', 19, 0, 0, 'S.P. 3464', 8.16, NULL, 'S'),
(69, 1, 3, 'Andersson, Miss. Erna Alexandra', 'female', 17, 4, 2, '3101281', 7.92, NULL, 'S'),
(70, 0, 3, 'Kink, Mr. Vincenz', 'male', 26, 2, 0, '315151', 8.66, NULL, 'S'),
(71, 0, 2, 'Jenkin, Mr. Stephen Curnow', 'male', 32, 0, 0, 'C.A. 33111', 10.5, NULL, 'S'),
(72, 0, 3, 'Goodwin, Miss. Lillian Amy', 'female', 16, 5, 2, 'CA 2144', 46.9, NULL, 'S'),
(73, 0, 2, 'Hood, Mr. Ambrose Jr', 'male', 21, 0, 0, 'S.O.C. 14879', 73.5, NULL, 'S'),
(74, 0, 3, 'Chronopoulos, Mr. Apostolos', 'male', 26, 1, 0, '2680', 14.45, NULL, 'C'),
(75, 1, 3, 'Bing, Mr. Lee', 'male', 32, 0, 0, '1601', 56.5, NULL, 'S'), 
 
(76, 0, 3, 'Moen, Mr. Sigurd Hansen', 'male', 25, 0, 0, '348123', 7.65, 'F G73', 'S'),
(77, 0, 3, 'Staneff, Mr. Ivan', 'male', NULL, 0, 0, '349208', 7.9, NULL, 'S'),
(78, 0, 3, 'Moutal, Mr. Rahamin Haim', 'male', NULL, 0, 0, '374746', 8.05, NULL, 'S'),
(79, 1, 2, 'Caldwell, Master. Alden Gates', 'male', 0.83, 0, 2, '248738', 29, NULL, 'S'),
(80, 1, 3, 'Dowdell, Miss. Elizabeth', 'female', 30, 0, 0, '364516', 12.47, NULL, 'S'),
(81, 0, 3, 'Waelens, Mr. Achille', 'male', 22, 0, 0, '345767', 9, NULL, 'S'),
(82, 1, 3, 'Sheerlinck, Mr. Jan Baptist', 'male', 29, 0, 0, '345779', 9.5, NULL, 'S'),
(83, 1, 3, 'McDermott, Miss. Brigdet Delia', 'female', NULL, 0, 0, '330932', 7.79, NULL, 'Q'),
(84, 0, 1, 'Carrau, Mr. Francisco M', 'male', 28, 0, 0, '113059', 47.1, NULL, 'S'),
(85, 1, 2, 'Ilett, Miss. Bertha', 'female', 17, 0, 0, 'SO/C 14885', 10.5, NULL, 'S'),
(86, 1, 3, 'Backstrom, Mrs. Karl Alfred (Maria Mathilda Gustafsson)', 'female', 33, 3, 0, '3101278', 15.85, NULL, 'S'),
(87, 0, 3, 'Ford, Mr. William Neal', 'male', 16, 1, 3, 'W./C. 6608', 34.38, NULL, 'S'),
(88, 0, 3, 'Slocovski, Mr. Selman Francis', 'male', NULL, 0, 0, 'SOTON/OQ 392086', 8.05, NULL, 'S'),
(89, 1, 1, 'Fortune, Miss. Mabel Helen', 'female', 23, 3, 2, '19950', 263, 'C23 C25 C27', 'S'),
(90, 0, 3, 'Celotti, Mr. Francesco', 'male', 24, 0, 0, '343275', 8.05, NULL, 'S'),
(91, 0, 3, 'Christmann, Mr. Emil', 'male', 29, 0, 0, '343276', 8.05, NULL, 'S'),
(92, 0, 3, 'Andreasson, Mr. Paul Edvin', 'male', 20, 0, 0, '347466', 7.85, NULL, 'S'),
(93, 0, 1, 'Chaffee, Mr. Herbert Fuller', 'male', 46, 1, 0, 'W.E.P. 5734', 61.17, 'E31', 'S'),
(94, 0, 3, 'Dean, Mr. Bertram Frank', 'male', 26, 1, 2, 'C.A. 2315', 20.57, NULL, 'S'),
(95, 0, 3, 'Coxon, Mr. Daniel', 'male', 59, 0, 0, '364500', 7.25, NULL, 'S'),
(96, 0, 3, 'Shorney, Mr. Charles Joseph', 'male', NULL, 0, 0, '374910', 8.05, NULL, 'S'),
(97, 0, 1, 'Goldschmidt, Mr. George B', 'male', 71, 0, 0, 'PC 17754', 34.65, 'A5', 'C'),
(98, 1, 1, 'Greenfield, Mr. William Bertram', 'male', 23, 0, 1, 'PC 17759', 63.36, 'D10 D12', 'C'),
(99, 1, 2, 'Doling, Mrs. John T (Ada Julia Bone)', 'female', 34, 0, 1, '231919', 23, NULL, 'S'),
(100, 0, 2, 'Kantor, Mr. Sinai', 'male', 34, 1, 0, '244367', 26, NULL, 'S');


select * from passengers;

--Find the      average absolute   fare difference between a specific passenger and all passengers that belong to the same pclass,  both are non-survivors 
--and age difference between two of them is 5 or less years.
--Do that for each passenger (that satisfy above mentioned coniditions). Output the result along with the passenger name.

with non_survivors as (
  select passengerid,name ,pclass,age,fare
  from passengers
  where survived = 0 and age is not null
) 
SELECT ns1.name, 
      Round( AVG(ABS(ns1.fare - ns2.fare)) ,3) AS AvgFareDifference
FROM non_survivors ns1
JOIN non_survivors ns2 
    ON ns1.pclass = ns2.pclass 
    AND ns1.passengerid <> ns2.passengerid
    AND ABS(ns1.Age - ns2.Age) <= 5
GROUP BY ns1.name;
