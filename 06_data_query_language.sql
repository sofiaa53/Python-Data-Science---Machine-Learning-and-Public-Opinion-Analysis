select a.orderNumber, a.orderDate, b.customerName, b.city, b.country, c.quantityOrdered, d.productName
from orders a
inner join customers b on a.customerNumber = b.customerNumber
inner join orderdetails c on a.orderNumber = c.orderNumber
inner join products d on c.productCode = d.productCode
where a.orderDate >= '2004-08-01' and a.orderDate <= '2004-12-01' and d.productName = '1992 Ferrari 360 Spider red'
order by b.country asc, a.orderDate asc;
;