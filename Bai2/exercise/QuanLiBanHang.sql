create database QuanLiBanHang ; 
use QuanLiBanHang ; 
create table Customer(
cID varchar(10) primary key ,
cName varchar(50) ,
cAge int 
);
create table Orders(
oID varchar(10) primary key ,
oDate datetime , 
oTotalPrice int ,
cID varchar (10),
foreign key (cID) references Customer(cID)
);
create table Product (
pID varchar(20) primary key ,
pName varchar(20) ,
pPice int 
);
create table OrderDetail(
odQTY varchar(20),
oID varchar(10),
pID varchar(20),
primary key(oID,pID),
foreign key (oID) references Orders(oID),
foreign key (pID) references Product(pID)
);
