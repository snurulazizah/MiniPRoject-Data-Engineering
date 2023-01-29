select distinct TOP (5) 
    b.ProductName, 
    sum(round(y.UnitPrice * y.Quantity * (1 - y.Discount), 2)) as ProductSales
from OrderDetails y
inner join Orders d on d.OrderID = y.OrderID
inner join Products b on b.ProductID = y.ProductID
where d.OrderDate between ('1997-1-1') and ('1997-12-31')
group by  b.ProductName
order by ProductSales DESC;