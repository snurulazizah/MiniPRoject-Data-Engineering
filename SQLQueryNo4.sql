Select 
c.ProductName,
d.CompanyName
FROM Orders as a
inner join OrderDetails as b on a.OrderID=b.OrderID
inner join Products as c on b.ProductID=c.ProductID
inner join Customers as d on a.CustomerID=d.CustomerID
Where c.ProductName='Chia' and a.OrderDate between ('1997-06-01') and ('1997-06-30')
