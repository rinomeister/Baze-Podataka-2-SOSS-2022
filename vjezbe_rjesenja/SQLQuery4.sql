--ZADATAK1
--Izradite upit koji ispisuje Id narudžbe (OrderID), te ime i prezime zaposlenika (LastName, FirstName)
--koji su izdali narudžbu, za narudžbe koje su otpremljene (ShippedDate) nakon zahtijevanog datuma
--dostave (RequiredDate).--SELECT emp.EmployeeID,OrderID,FirstName,LastName--FROM Orders ord INNER JOIN Employees emp ON ord.EmployeeID = emp.EmployeeID--WHERE ShippedDate>RequiredDate--ZADATAK2--Select p.ProductID,p.ProductName,SUM(Quantity)--FROM Products p INNER JOIN [Order Details] o ON p.ProductID=o.ProductID--GROUP BY p.ProductID,p.ProductName--HAVING Sum(Quantity)<200--ORDER BY P.ProductName--ZADATK3--SELECT o.OrderID,o.OrderDate,c.CustomerID,c.CompanyName,c.ContactName,e.EmployeeID,e.LastName,e.FirstName--FROM Orders o INNER JOIN Customers c ON o.CustomerID=c.CustomerID INNER JOIN Employees e ON o.EmployeeID=e.EmployeeID--ORDER BY o.OrderDate--ZADATAK5--SELECT COUNT(DISTINCT o.OrderID) AS BrojNarudzbi,o.ShipCountry AS ZemljaNarudzbe,COUNT(DISTINCT e.EmployeeID) AS BrojZaposlenika,e.Country AS ZemljaZaposlenika
--FROM Orders o FULL JOIN Employees e ON o.ShipCountry=e.Country
--WHERE o.ShipCountry=e.Country
--GROUP BY o.ShipCountry,e.Country

--ZADATAK4
--SELECT p.ProductID,p.ProductName,COUNT(*) AS UkupnoStavki
--FROM Products p LEFT OUTER JOIN [Order Details] o ON p.ProductID = o.ProductID
--GROUP BY p.ProductID,p.ProductName
--ORDER BY p.ProductName

--ZADAATAK6
--SELECT CompanyName,ContactName,Address,City,Country,Phone
--FROM Suppliers
--UNION
--SELECT CompanyName,ContactName,Address,City,Country,Phone
--FROM Customers

--ZADATAK7
SELECT emp.EmployeeID,emp.FirstName,emp.LastName
FROM Employees emp INNER JOIN Orders o on emp.EmployeeID = o.EmployeeID
WHERE o.CustomerID ='ALFKI'
EXCEPT
SELECT emp.EmployeeID,emp.FirstName,emp.LastName
FROM Employees emp INNER JOIN Orders o on emp.EmployeeID = o.EmployeeID
WHERE o.CustomerID ='ROMEY'

--ZADATAK8
--SELECT DISTINCT ShipCity FROM Orders
--INTERSECT
--SELECT DISTINCT City FROM Suppliers
