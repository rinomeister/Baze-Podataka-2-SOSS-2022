----1.1
--CREATE FUNCTION IznosStavke ()
--RETURNS TABLE
--AS
--RETURN
--(
--	SELECT UnitPrice,Quantity,UnitPrice*Quantity AS Ukupno
--	FROM [Order Details]
--)
--GO
--SELECT * FROM IznosStavke()

----1.2
--CREATE FUNCTION drugizad(@iznos INT)
--RETURNS TABLE
--AS
--RETURN
--(
--	SELECT UnitPrice*Quantity AS Ukupno
--	FROM [Order Details]
--	WHERE UnitPrice*Quantity > @iznos
--)
--GO
--SELECT * FROM drugizad(1523)

----1.3
--DROP FUNCTION drugizad
--DROP FUNCTION IznosStavke

2.1
CREATE PROCEDURE printAllProducts
AS
SELECT *
FROM Products

2.2
CREATE PROCEDURE selectProductByID(@id INT)
AS
Select *
FROM Products
WHERE ProductID = @id

2.3
CREATE PROCEDURE UpdateProductPrice(@newprice INT)
AS
UPDATE Products
SET UnitPrice=@newprice
SELECT *
FROM Products
WHERE UnitPrice = 10

exec UpdateProductPrice @newprice='10'

--2.4
CREATE PROCEDURE spSalesReport(@startOrderDate DATETIME, @endOrderDate DATETIME)
AS
SELECT e.FirstName, e.LastName, count(o.OrderID),SUM(od.Quantity*od.UnitPrice) FROM Employees e CROSS JOIN [Order Details] od CROSS JOIN Orders o
WHERE o.OrderDate>@startOrderDate AND o.OrderDate<@endOrderDate
GROUP BY e.FirstName, e.LastName

exec spSalesReport '1997-01-03','1998-11-11'

--2.5
DROP PROCEDURE PrintAllProducts
DROP PROCEDURE selectProductByID
DROP PROCEDURE UpdateProductPrice
DROP PROCEDURE spSalesReport