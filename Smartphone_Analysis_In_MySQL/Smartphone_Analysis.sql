 -- SELECT * FROM campusx.smartphones WHERE 1   -- 1 all rows 
 
 -- SELECT model, price, rating FROM campusx.smartphones;
 
 -- SELECT model, battery_capacity,os FROM campusx.smartphones;
 
 -- SELECT os AS 'Operationg System',model, battery_capacity AS 'MAH' FROM campusx.smartphones; --it is known as alieas
 
 -- SELECT model, 
 -- SQRT(resolution_width * resolution_width + resolution_height * resolution_height)/ screen_size AS 'PPI'
 -- FROM campusx.smartphones; -- finding ppi
 

 -- SELECT model, rating/10 FROM campusx.smartphones;
 
 -- SELECT model, 'smartphone' AS 'type' FROM campusx.smartphones;
 -- if we want totype as anything then we can write with AS
 
 -- SELECT DISTINCT(brand_name) AS 'ALL brands' 
 -- FROM campusx.smartphones;
 
 -- SELECT DISTINCT(processor_brand) AS 'all_processor'
 -- FROM campusx.smartphones;
 
--  SELECT DISTINCT(os) AS 'all_processor'
 -- FROM campusx.smartphones;
 
 -- SELECT DISTINCT brand_name, processor_brand 
 -- FROM campusx.smartphones;
 
 -- SELECT * FROM campusx.smartphones
 -- WHERE brand_name='samsung'
 
 -- SELECT * FROM campusx.smartphones
 -- WHERE price > 100000
 
 -- SELECT * FROM campusx.smartphones
 -- WHERE price > 10000 AND price < 20000

-- SELECT * FROM campusx.smartphones
-- WHERE price BEtWEEN 10000 AND 20000

-- SELECT * FROM campusx.smartphones
-- WHERE price < 15000 AND rating > 80

-- SELECT * FROM campusx.smartphones
-- WHERE price < 15000 AND rating > 80 AND processor_brand = 'snapdragon'

-- SELECT * FROM campusx.smartphones
-- WHERE brand_name = 'samsung' AND ram_capacity > 8

-- SELECT * FROM campusx.smartphones
-- WHERE brand_name = 'samsung' AND processor_brand = 'snapdragon'

-- SELECT DISTINCT(brand_name) FROM campusx.smartphones
-- WHERE price > 150000

-- SELECT * FROM campusx.smartphones
-- WHERE processor_brand = 'exynos' OR 
-- processor_brand = 'snapdragon' OR 
--  processor_brand = 'bionic'

-- we can write upper query in easy ways 

SELECT * FROM campusx.smartphones
WHERE processor_brand IN ('snapdragon', 'exynos' 'bionic') ;

 SELECT * FROM  campusx.smartphones 
 Where processor_brand NOT IN ('snapdragon', 'exynos', 'bionic');
--  NOT in means jo diya hai block me yuse chhodkar ;

-- NOW UPDATE ;
 UPDATE campusx.smartphones
 SET processor_brand  = 'dimensity'
 WHERE processor_brand = 'mediatek';

-- SELECT * FROM campusx.smartphones
-- WHERE processor_brand = 'mediatek'

-- UPDATE campusx.camdata
-- SET email = 'manish@123', password = '234'
-- WHERE name = 'Manish'

-- DELETE FROM campusx.smartphones
-- WHERE price > 200000 -- for deleting 
-- for deleting smartphones which price is more than 200000

-- for checking 
-- SELECT * FROM campusx.smartphones
-- WHERE price > 200000

-- SELECT * FROM campusx.smartphones
-- WHERE primary_camera_rear > 150  AND brand_name = 'samsung'

-- aggregate function
-- SELECT MIN(price) FROM campusx.smartphones
-- SELECT MAX(price) FROM campusx.smartphones

-- SELECT MAX(price) FROM campusx.smartphones
-- WHERE brand_name = 'smasung'

-- SELECT * FROM campusx.smartphones
-- WHERE brand_name = 'samsung' AND price = 163980

-- SELECT AVG(rating) FROM campusx.smartphones
-- WHERE brand_name = 'sumsung'

-- SELECT SUM(price) FROM campusx.smartphones

-- SELECT COUNT(*) FROM campusx.smartphones  -- kitne no. of phone 
-- WHERE brand_name = 'apple'

-- SELECT COUNT(DISTINCT(brand_name)) FROM campusx.smartphones;  -- 42 types different phones

-- for checking STD
-- SELECT STD(screen_size) FROM  campusx.smartphones;
-- SELECT VARIANCE(screen_size) FROM  campusx.smartphones;

-- SELECT  ABS(price - 100000) AS  'temp' FROM campusx.smartphones
-- absolute I'm substracting 1lakh in all smartphones price as tem columns

-- SELECT ROUND(SQRT(resolution_width * resolution_width + resolution_height * resolution_height)/ screen_size, 2) AS 'PPI'  -- if want 2 decimal value we wrie , 2

-- SELECT CEIL(screen_size) FROM campusx.smartphones;
-- SELECT FLOOR(screen_size) FROM campusx.smartphones;
-----------  L- 33    -----------------------------------
-- SELECT * FROM campusx.smartphones WHERE brand_name = 'samsung'
-- ORDER BY screen_size DESC 

-- in upper query I'm faceing to see desired column bcz so many col
 -- no again new query
 -- SELECT model, screen_size  FROM campusx.smartphones WHERE brand_name = 'samsung'
 -- ORDER BY screen_size  DESC LIMIT 10 -- limit is like head in pandas
 
 -- SELECT model, num_front_cameras + num_rear_cameras AS 'total_cameras' FROM campusx.smartphones
 -- ORDER BY total_cameras DESC
 
 -- SELECT model, ROUND(SQRT(resolution_width * resolution_width + resolution_height * resolution_height)/ screen_size) AS 'PPI'
 -- FROM campusx.smartphones;
 
 -- SELECT model, battry_capacity
-- FROM campusx.smartphones
-- ORDER BY battry_capacity DESC LIMIT 1, 1 -- LImit 1, 1 tell that previous row '0' left and print second row > in this we are finding 2nd max values
 -- agar mujhe 3 se chahiye aur 2 phone show karana hai to limit 3, 2 likhenge
 -- if I have to find second lowest value > ASC Limit 1, 1
 
-- SELECT model, rating 
-- FROM campusx.smartphones
-- WHERE brand_name = 'apple'
-- ORDER BY rating ASC 
 
 -- SELECT model, brand_name, price  FROM campusx.smartphones
 -- ORDER BY brand_name ASC, price ASC
 
 -- SELECT * FROM campusx.smartphones
 -- ORDER BY brand_name ASC, rating DESC
 
 -- Grouping Data
 
 -- SELECT brand_name, COUNT(*) AS 'num_phones'
 -- FROM campusx.smartphones
 -- GROUP BY brand_name 
 
-- SELECT brand_name, COUNT(*) AS 'num_phones'
-- FROM campusx.smartphones
-- GROUP BY brand_name 
-- ORDER BY num_phones DESC LIMIT 5 -- top 5
 
 -- for making more group
 -- SELECT brand_name, COUNT(*) AS 'num_phones',
 -- ROUND(AVG(price)) AS 'avg price',
 -- MAX(rating) AS 'max rating',
 -- ROUND(AVG(screen_size), 2) AS 'avg screen size',
 -- ROUND(AVG(battery_capacity)) AS 'avg battry capacity'
 -- FROM campusx.smartphones
--  GROUP BY brand_name 
-- ORDER BY num_phones DESC LIMIT 5   

-- SELECT has_nfc,
-- AVG(price) AS 'avg price',
-- AVG(rating) AS 'rating'
-- FROM campusx.smartphones
-- GROUP BY has_nfc

-- SELECT has_5g,
-- AVG(price) AS 'avg price',
-- AVG(rating) AS 'rating'
-- FROM campusx.smartphones
-- GROUP BY has_5g

-- check fast charging
-- SELECT fast_charging_available,
-- AVG(price) AS 'avg price',
-- AVG(rating) AS 'rating'
-- FROM campusx.smartphones
-- GROUP BY fast_charging_available
-- 1 means has fast charging, 0 means has not fast charging

-- SELECT * FROM campusx.smartphones

-- SELECT extended_memory_available,
-- AVG(price) AS 'avg price',
-- AVG(rating) AS 'rating'
-- FROM campusx.smartphones
-- GROUP BY extended_memory_available
 
 -- SELECT brand_name,
 -- processor_brand, os,
 -- COUNT(*) AS 'num phones',
 -- ROUND(AVG(primary_camera_rear)) AS 'avg_camera_resolution'
 -- FROM campusx.smartphones
 -- GROUP BY brand_name, processor_brand, os
 
 -- find top brand by avg price
 -- SELECT brand_name, ROUND(AVG(price)) AS 'avg_price'
 -- FROM campusx.smartphones
 -- GROUP BY brand_name
 -- ORDER BY avg_price DESC LIMIT 5
 
 -- which brand makes smallest screen size 
-- SELECT brand_name, ROUND(AVG(screen_size)) AS 'avg_screen_size'
-- FROM campusx.smartphones
-- GROUP BY brand_name
-- ORDER BY avg_screen_size ASC LIMIT 1
 
 -- which brand makes smallest screen size smartphones
 -- SELECT brand_name, ROUND(AVG(screen_size)) AS 'avg_Screen_size'
 -- FROM campusx.smartphones
 -- GROUP BY brand_name
-- ORDER BY avg_screen_size ASC LIMIT 1
 
-- Group smartphones by the brand, and find the brand with the highest number of models that have both 
 -- and  IR blaster 
 -- SELECT brand_name, COUNT(*) AS 'count'
 -- FROM campusx.smartphones
 -- WHERE has_nfc = 'True' AND  has_ir_blaster = 'True'
 -- GROUP BY brand_name
 -- ORDER BY count DESC LIMIT 1
 
 -- find all samsung 5g enabled smartphones and find out the avg price for NFC  and NON - nfc phones
-- SELECT has_nfc, AVG(price) AS 'avg_price'
--  FROM campusx.smartphones
--  WHERE brand_name = 'samsung'
--  Group BY has_nfc;
 
 -- SELECT model, price FROM campusx.smartphones
 -- ORDER BY price DESC LIMIT 1
 
 -- for finding row numbers
 -- SELECT COUNT(*) FROM campusx.smartphones
 
 -- sub aggregate operation in this agar phone basis par avg price nikalna  ho aur usme ham ye bhi bol de ki itna se jayada numbers me hona chahie to 
-- SELECT brand_name,
-- COUNT(*) AS 'count',
-- AVG(price) AS 'avg_price'
-- FROM campusx.smartphones
-- GROUP BY brand_name
-- HAVING count > 40
 -- group by ke upper having kam karta hai
 
 -- find the avg rating of smartphone brands which have more than 20 phones
 -- SELECT brand_name, 
-- COUNT(*) AS 'Count',
-- AVG(rating) AS 'avg_rating'
-- FROM campusx.smartphones
-- GROUP BY brand_name
-- HAVING count > 40 
-- ORDER BY avg_rating DESC 
 
 -- FInd the top 3 brands with the highest avg ram that have a refresh rate of at least 90Hz  and fast charging available and dont consider brands which have less than 10 phones
-- SELECT brand_name,
-- AVG(ram_capacity) AS 'avg_ram'
-- FROM campusx.smartphones
-- WHERE refresh_rate > 90 AND fast_charging_available = 1
-- GROUP BY brand_name
-- HAVING COUNT(*) > 10
-- ORDER BY 'avg_ram' DESC LIMIT 3

-- FIND the avg price of all the phone brands with avg rating > 70 and num_phones more than 10 among all
-- 5g  enabled phones
-- SELECT brand_name, AVG(price) AS 'avg_price'
-- FROM campusx.smartphones 
-- WHERE has_5g = 'True'
-- GROUP BY brand_name 
-- HAVING AVG(rating) > 70 AND COUNT(*) > 10 






