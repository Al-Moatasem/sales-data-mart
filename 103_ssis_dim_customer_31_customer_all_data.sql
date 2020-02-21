SELECT
	p.BusinessEntityID AS personid,
	CAST( 
		( ISNULL(p.FirstName, '') +' ' + ISNULL(p.MiddleName, '') +' '+ ISNULL(p.LAStName, '') ) 
	AS NVARCHAR(150)) AS customer_name,
	a2.AddressLine1 AS address1,
	a2.AddressLine2 AS address2,
	a2.City,
	-- a2.PostalCode,
	pp.PhoneNumber AS phone
FROM Person.Person AS p
	LEFT JOIN Person.BusinessEntityAddress AS a1 
		ON p.BusinessEntityID = a1.BusinessEntityID and a1.AddressTypeID = 2 -- there are few customers with multiple address types (2,5)
	LEFT JOIN Person.Address AS a2 
		ON a2.AddressID = a1.AddressID 
	LEFT JOIN Person.PersonPhone AS pp
		ON p.BusinessEntityID = pp.BusinessEntityID
