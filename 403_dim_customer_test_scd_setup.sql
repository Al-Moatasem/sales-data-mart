USE EO_AdventureWorksDW2014; 

-- delete ~10% of records in dim_customer 
DELETE FROM dim_customer 
WHERE  customer_id % 50 = 2; 

-- update city for ~10% in dim_customer 
UPDATE dim_customer 
SET    city = 'cairo' 
WHERE  city = 'paris'; 

-- update phone number 
UPDATE dim_customer 
SET    phone = Substring(phone, 10, 3) 
               + Substring(phone, 4, 5) + Substring(phone, 9, 1) 
               + Substring(phone, 1, 3) 
WHERE  Len(phone) = 12 
       AND LEFT(phone, 3) BETWEEN '101' AND '125'; 

-- updated records - type 2 
SELECT customer_id, 
       Count(*) 
FROM   dim_customer 
GROUP  BY customer_id 
HAVING Count(*) > 1 

SELECT * 
FROM   dim_customer 
WHERE  customer_id = 11036 
