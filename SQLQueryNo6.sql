select 
a.CompanyName,
round(b.UnitPrice*b.Quantity,2) as Pembelian
From Customers as a
inner join Orders as c on a.CustomerID=c.CustomerID
inner join OrderDetails as b on c.OrderID=b.OrderID
where round(b.UnitPrice*b.Quantity,2) >500 and c.OrderDate between ('1997-01-01') and ('1997-12-31') 
