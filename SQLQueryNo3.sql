select TOP(5)
    a.ProductName,
	b.Quantity

from Products as a
inner join OrderDetails as b on a.ProductID = b.ProductID
inner join Orders as c on b.OrderID=c.OrderID
where c.OrderDate between ('1997-01-01') and ('1997-01-31')
order by b.Quantity DESC

