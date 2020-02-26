SELECT
	sod.SalesOrderID AS SalesOrderID,
	SalesOrderDetailID,
	OrderQty,
	ProductID,
	UnitPrice,
	UnitPriceDiscount,
	LineTotal
FROM sales.SalesOrderDetail AS sod
INNER JOIN sales.SalesOrderHeader AS soh
	ON sod.SalesOrderID = soh.SalesOrderID
WHERE OnlineOrderFlag = 1
AND soh.ModifiedDate >= ? -- user variable, last update date
AND soh.ModifiedDate < ? -- system variabl, StartTime
ORDER BY sales_order_id
