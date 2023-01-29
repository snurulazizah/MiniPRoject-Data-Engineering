Create view ProductOrder AS
select distinct y.OrderID, 
    y.ProductID, 
    x.ProductName, 
    y.UnitPrice, 
    y.Quantity, 
    y.Discount, 
    round(y.UnitPrice * y.Quantity * (1 - y.Discount), 2) as ExtendedPrice
from Products x
inner join OrderDetails y on x.ProductID = y.ProductID
