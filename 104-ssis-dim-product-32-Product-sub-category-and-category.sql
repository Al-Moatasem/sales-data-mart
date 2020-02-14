SELECT
	psc.ProductSubcategoryID,
	psc.Name AS product_subcategory,
	pc.name AS product_category
FROM [Production].[ProductSubcategory] AS psc
	LEFT JOIN [Production].[ProductCategory] AS pc
		ON psc.ProductCategoryID = pc.ProductCategoryID
UNION ALL
SELECT null,null,null
