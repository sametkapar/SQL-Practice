USE NORTHWND

--En �ok sat�lan �r�nler
SELECT * FROM Products
SELECT * FROM Orders
SELECT * FROM [Order Details] ORDER BY Quantity DESC

SELECT Od.ProductID, Od.Quantity AS [toplam sat��]
FROM Products AS P
JOIN [Order Details] AS OD ON P.ProductID = OD.ProductID
GROUP BY Od.ProductID, Od.Quantity

SELECT ProductID = 1, Quantity From [Order Details] 



--Hangi �r�ndeki kategoriden ne kadarl�k sat�� yap�lm��

SELECT * FROM Categories
SELECT * FROM Products
SELECT * FROM [Order Details]

SELECT OD.OrderID
FROM [Order Details] AS OD
JOIN Products AS P ON OD.ProductID = P.ProductID
JOIN Categories AS C ON C.CategoryID = P.CategoryID


SELECT E.FirstName + ' ' + E.LastName, COUNT(*)
FROM Orders AS O
JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
GROUP BY E.FirstName + ' ' + E.LastName

SELECT * FROM Customers --CustomerID
SELECT * FROM Orders

SELECT O.CustomerID

FROM Orders AS O
JOIN Customers AS CU ON CU.CustomerID = O.CustomerID
JOIN [Order Details] AS OD ON OD.OrderID = O.OrderID
