SELECT CustomerID AS customer_id, PersonID
FROM Sales.Customer
WHERE PersonID IS NOT NULL
UNION ALL
SELECT NULL, NULL
