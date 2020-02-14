SELECT
	pm.ProductModelID,
	pm.Name AS model_name,
	pd.Description AS Product_description
FROM [Production].[ProductModel] AS pm
	LEFT JOIN production.ProductModelProductDescriptionCulture AS pdi 
		ON pm.ProductModelID = pdi.ProductModelID
	LEFT JOIN [Production].[ProductDescription] AS pd
		ON pdi.ProductDescriptionID = pd.ProductDescriptionID
WHERE pdi.CultureID = 'en' OR pdi.CultureID IS null
UNION ALL
SELECT null,null,null
