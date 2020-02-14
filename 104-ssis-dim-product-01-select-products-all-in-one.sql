SELECT 
	p.ProductID AS product_id ,
	p.Name AS product_name,
	COALESCE(p.Color, 'Unknown') AS color,
	p.ReorderPoint AS reorder_point,
	p.StandardCost AS standard_cost,
	COALESCE(pm.Name, 'Unknown')  AS model_name,
	COALESCE(pd.Description, 'Unknown')  AS Product_description,
	COALESCE(psc.Name, 'Unknown') AS product_subcategory,
	COALESCE(pc.name, 'Unknown') AS product_category

FROM Production.Product AS p
	LEFT JOIN [Production].[ProductModel] AS pm 
		ON p.ProductModelID = pm.ProductModelID
	LEFT JOIN production.ProductModelProductDescriptionCulture AS pdi 
		ON pm.ProductModelID = pdi.ProductModelID
	LEFT JOIN [Production].[ProductDescription] AS pd
		ON pdi.ProductDescriptionID = pd.ProductDescriptionID
	LEFT JOIN [Production].[ProductSubcategory] AS psc 
		ON p.ProductSubcategoryID = psc.ProductSubcategoryID
	LEFT JOIN [Production].[ProductCategory] AS pc
		ON psc.ProductCategoryID = pc.ProductCategoryID
WHERE pdi.CultureID = 'en' OR pdi.CultureID IS NULL
