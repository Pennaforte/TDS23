SELECT * FROM Person.Person
WHERE BusinessEntityID = 5 
OR BusinessEntityID = 111
OR BusinessEntityID = 23

/*
AND - E
OR - OU
NOT - ACOMPANHADO
=
>
<
<>
>=
<=

*/
SELECT Weight,ProductID,ProductNumber FROM Production.Product
WHERE Weight > 500
AND Weight <= 700

SELECT * FROM HumanResources.Employee
WHERE MaritalStatus = 'M' 
AND SalariedFlag = 1
AND BirthDate < '1982-12-12'
ORDER BY BirthDate DESC

SELECT * FROM Person.EmailAddress
WHERE BusinessEntityID = 26

SELECT * FROM Person.Person
WHERE FirstName = 'Peter'
AND LastName= 'Krebs'

SELECT Person.Person.FirstName,Person.Person.LastName, Person.EmailAddress.EmailAddress 
FROM Person.Person,Person.EmailAddress
WHERE Person.BusinessEntityID = EmailAddress.BusinessEntityID
AND Person.BusinessEntityID = 26

SELECT * FROM Production.Product
SELECT COUNT(*) AS 'QTDE DE PRODUTOS' FROM Production.Product

SELECT DISTINCT Name FROM Production.Product

SELECT DISTINCT title FROM Person.Person




