use QuanLiBanHang;
select oID , oDate , oTotalPrice from orders;
select c.cId,c.cName, p.pName
from customer c
join orders o on c.cID = o.cID
join orderdetail od on o.oID = od.oID
join product p on od.pID = p.pID;  
SELECT C.cName
FROM Customer C
LEFT JOIN orders O on C.cId = O.cId
WHERE O.cId is NULL;
SELECT O.oId,O.oDate,SUM(P.pPice *Od.odQTY) AS Price
FROM orders O
JOIN orderdetail Od on O.oId = Od.oId
JOIN Product P on Od.pId = P.pId
GROUP BY O.oId,O.oDate;