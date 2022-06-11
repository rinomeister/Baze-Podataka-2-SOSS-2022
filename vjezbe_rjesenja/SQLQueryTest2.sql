----1zad
--CREATE PROCEDURE sp_DeleteProduct(@disct INT)
--AS
--DELETE FROM Products
--WHERE Discontinued = @disct

--exec sp_DeleteProduct 1

----2zad
--CREATE PROCEDURE sp_InsertEmp (@ln nvarchar(20), @fn nvarchar(10))
--AS
--INSERT Employees(LastName, FirstName)
--VALUES(@ln, @fn)

--exec sp_InsertEmp 'Zupa', 'Rino'

--3zad
--INSERT Categories(CategoryName, Description)
--VALUES ('zacini', 'opiszacina')

--UPDATE Categories
--SET Description='Mirodije'
--WHERE CategoryName='zacini'

--select *
--from Categories

--4zad
INSERT Products(ProductName, CategoryID)
SELECT 'Papar', Categories.CategoryID
FROM Categories WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = 'zacini')

INSERT Products(ProductName, CategoryID)
SELECT 'Sol', Categories.CategoryID
FROM Categories WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = 'zacini')

INSERT Products(ProductName, CategoryID)
SELECT 'Šećer', Categories.CategoryID
FROM Categories WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = 'zacini')

--5zad
UPDATE PRODUCTS
SET ProductName = ProductName + '_ZACIN'
WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName='zacini')
--zad6
CREATE PROCEDURE sp_InsertProduct(@suplid INT)
AS
INSERT Products(ProductName, SupplierID, CategoryID)
SELECT TOP 1 ProductName, SupplierID, CategoryID from Products where SupplierID=@suplid

exec sp_InsertProduct 2

--8ZAD
CREATE FUNCTION fn_EmployeeOrdersCount(@orderCount INT)
RETURNS TABLE
AS 
RETURN 
( SELECT EmployeeID,COUNT(OrderID) AS NumberOfOrders From Orders o GROUP BY EmployeeID HAVING COUNT(OrderID) > @orderCount)
SELECT * FROM fn_EmployeeOrdersCount(122)

--7zad
CREATE PROCEDURE sp_UpdateProducts(@suplrid INT)
AS
UPDATE PRODUCTS
SET UnitPrice = UnitPrice + UnitPrice * 0.20
WHERE SupplierID = @suplrid

exec sp_UpdateProducts 1








