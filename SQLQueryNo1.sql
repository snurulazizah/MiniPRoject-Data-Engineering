SELECT MONTH(OrderDate) as bulan,
count(CustomerID) as Total
From Orders
where Orders.OrderDate between ('1997-01-01') and ('1997-12-31')
Group by MONTH(OrderDate)
Order by MONTH(OrderDate)
