SELECT
	SalesOrderID,
	SalesOrderNumber,
	CONVERT(date, OrderDate) AS OrderDate,
	CustomerID,
	TerritoryID,
	TaxAmt,
	Freight
FROM Sales.SalesOrderHeader
WHERE OnlineOrderFlag = 1
AND ModifiedDate >= ? -- user variable, last update date
AND ModifiedDate < ? -- system variabl, StartTime
ORDER BY sales_order_id
