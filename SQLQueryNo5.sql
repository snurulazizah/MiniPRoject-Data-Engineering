select distinct
Count(x.OrderID ) as jumlahorder,
round(x.UnitPrice * x.Quantity,1) as TotalPembelian
From OrderDetails as x
inner join Orders as y on x.OrderID=y.OrderID
where round(x.UnitPrice * x.Quantity,1) <100 or round(x.UnitPrice * x.Quantity,1)=100
GROUP BY  round(x.UnitPrice * x.Quantity,1)
