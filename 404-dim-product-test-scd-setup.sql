USE EO_AdventureWorksDW2014;

-- ============== dim_product  ==============
SELECT COUNT(*) FROM dim_product
;

SELECT 
	product_key, product_key % 10
FROM dim_product
;

-- delete ~10% of records in dim_product
DELETE FROM dim_product WHERE product_key % 10 = 6
;

-- update product color 
UPDATE dim_product SET color = 'Dark-Green' 
WHERE product_key % 10 = 3
;

-- update reorder_point by adding 10% to the original value
UPDATE dim_product SET reorder_point = ROUND(reorder_point * 1.1,0)
WHERE product_key % 10 = 4
;
