--ZADATAK1
--Izradite upit koji ispisuje Id narud�be (OrderID), te ime i prezime zaposlenika (LastName, FirstName)
--koji su izdali narud�bu, za narud�be koje su otpremljene (ShippedDate) nakon zahtijevanog datuma
--dostave (RequiredDate).
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