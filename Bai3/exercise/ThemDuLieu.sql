use QuanLiBanHang;
insert into customer(cId , cName , cAge)
values(1,'Minh Quan',10);
insert into customer(cId , cName , cAge)
values(2,'Ngoc Oanh',20);
insert into customer(cId , cName , cAge)
values(3,'Hong Ha',50);
insert into Orders(oId,cId,oDate,oTotalPrice)
values (1,1,'2006/3/21',null);
insert into Orders(oId,cId,oDate,oTotalPrice)
values (2,2,'2006/3/23',null);
insert into Orders(oId,cId,oDate,oTotalPrice)
values (3,1,'2006/3/16',null);
insert into Product(pId,pName,pPice)
values(1,'May Giat',3);
insert into Product(pId,pName,pPice)
values(2,'Tu Lanh',5);
insert into Product(pId,pName,pPice)
values(3,'Dieu Hoa',7);
insert into Product(pId,pName,pPice)
values(4,'Quat',1);
insert into Product(pId,pName,pPice)
values(5,'Bep Dien',2);
insert into orderdetail(oId,pId,odQTY)
values(1,1,3);
insert into orderdetail(oId,pId,odQTY)
values(1,3,7);
insert into orderdetail(oId,pId,odQTY)
values(1,4,2);
insert into orderdetail(oId,pId,odQTY)
values(2,1,1);
insert into orderdetail(oId,pId,odQTY)
values(3,1,8);
insert into orderdetail(oId,pId,odQTY)
values(2,5,4);
insert into orderdetail(oId,pId,odQTY)
values(2,3,3);