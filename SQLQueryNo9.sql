select  a.CustomerID, 
    b.CompanyName, 
    a.OrderID, 
    a.OrderDate, 
    a.RequiredDate, 
    a.ShippedDate
from Orders a 
inner join Customers b on a.CustomerID = b.CustomerID


