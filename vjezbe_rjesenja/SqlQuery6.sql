--1.zdk
--INSERT INTO Employees
--(LastName, FirstName, Title)
--VALUES ('Zupa', 'Rino', 'student')

----2. zdk
--INSERT INTO Orders
--(EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipAddress, ShipName, ShipCity, ShipCountry, ShipPostalCode, ShipRegion)
--VALUES ( 10, '01.03.2021', '02.02.2021', '08.02.2021', 'Table 6', 'Mehico', 'Split', 'Croatia', '21000', 'Dalmacija')


--INSERT INTO Orders
--(EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipAddress, ShipName, ShipCity, ShipCountry, ShipPostalCode, ShipRegion)
--VALUES ( 10, '01.03.2021', '02.03.2021', '09.03.2020', 'Pujanke 4', 'LA', 'Split', 'Croatia', '21000', 'Dalmacija')
--select *
--from orders
--order by ShippedDate desc

--3zdk
--UPDATE Employees
--SET TitleOfCourtesy = 'Mr.',
--BirthDate = '1998-06-14',
--HireDate = '2005-11-11',
--Address = 'Fra bonina 10',
--City = 'Imotski',
--Region = 'Dalmacija',
--PostalCode = '21000',
--Country = 'Hrvatska',
--HomePhone = '385776',
--Extension = '385',
--Photo = '2',
--Notes = 'Bis ca',
--ReportsTo = '1',
--PhotoPath = 'www.facebook.com'
--WHERE EmployeeID = 10

--4 zdk
--UPDATE Employees
--SET EmployeeID = 11
--WHERE FirstName = 'Rino' AND LastName = 'Zupa'

--5 zdk
--DELETE FROM Orders
--WHERE EmployeeID = 10
--DELETE FROM Employees
--WHERE EmployeeID = 10
