--This query is usedd to join the tables by using inner join--

Select PP.FirstName,PP.LastName,SP.Name AS State,CR.Name AS Country,PA.PostalCode,PA.City from Person.Person AS PP
JOIN Person.BusinessEntityAddress AS BEA ON PP.BusinessEntityID = BEA.BusinessEntityID
JOIN Person.Address AS PA ON BEA.AddressID = PA.AddressID
JOIN Person.StateProvince AS SP ON PA.StateProvinceID = SP.StateProvinceID
JOIN Person.CountryRegion AS CR ON SP.CountryRegionCode = CR.CountryRegionCode