SELECT 
	ProductID AS product_id ,
	Name AS product_name,
	Color,
	ReorderPoint AS reorder_point,
	StandardCost AS standard_cost,
	ProductSubcategoryID,
	ProductModelID
FROM Production.Product
