--ZADATAK1
--SELECT OrderID,Quantity,(SELECT MAX(Quantity) From [Order Details] as MaxKolicina)
--From [Order Details]
--where ProductID = 23

--ZADATAK2
--SELECT ProductID,ProductName,SupplierID
--FROM Products
--WHERE SupplierID IN(SELECT SupplierID FROM Suppliers
--					WHERE CompanyName IN ('Exotic Liquids','Tokyo Traders'))
 
 --ZADATAK4
 --SELECT OrderID,CustomerID
 --FROM Orders
 --WHERE OrderDate = (SELECT MAX (OrderDate) FROM Orders)

 --ZADATAK3
 --SELECT ProductID,ProductName
 --FROM Products
 --WHERE UnitPrice = (SELECT UnitPrice FROM Products
	--				WHERE ProductName = 'Longlife Tofu')
--ZADATAK 5
--Select ProductID,ProductName
--FROM Products
--WHERE ProductName = (SELECT ProductName From Products
--					 WHERE UnitsOnOrder is null)
					 
--WHERE PRODUCTSID NOT IN (SELECT PRODUCTID FROM ORDER DETAILS) MOZE BIT RJESENJE
--ZADATAK 6
--SELECT OrderID,CustomerID 
--From Orders o
--WHERE 10000 < (SELECT SUM(UnitPrice*Quantity-(UnitPrice * Quantity*Discount)) FROM [Order Details] od
--				WHERE o.OrderID = od.OrderID)
--zad7
--SELECT CustomerID,CompanyName
--FROM Customers c
--WHERE EXISTS (SELECT * FROM Orders o
--			WHERE c.CustomerID = o.CustomerID
--			AND ShipCountry = 'France')