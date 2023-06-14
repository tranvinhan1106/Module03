create database demo ; 
use demo ; 
create table Product(
Id int primary key auto_increment,
productCode  varchar(20) , 
productName varchar(20) , 
productPrice int  , 
productAmount int  , 
productDescription varchar(50) ,
productStatus varchar (20) 
);
insert into Product(  productCode, productName , productPrice , ProductAmount , ProductDescription, ProductStatus)
values  ('P001', 'Product 1', 10, 50, 'Description 1', 1),
		('P002', 'Product 2', 20, 100, 'Description 2', 1),
		('P003', 'Product 3', 15, 75, 'Description 3', 0),
		('P004', 'Product 4', 25, 30, 'Description 4', 1),
		('P005', 'Product 5', 30, 80, 'Description 5', 1);
create unique index index_Product on Product (ProductCode);
explain select * from Product where ProductCode='P001';
create index index_Composite on Product(productName , productPrice);
explain select * from Product where ProductName = 'Product 1' and productPrice = 10;
create view view_Product as select productCode , productName , productPrice , productStatus from Product; 
Delete From view_Product 
where productCode = 'P001';
drop view view_Product ;
drop procedure if exists procedure_Product;
DELIMITER //
create procedure  procedure_Product ()
begin 
	select * from Product ;
end //
DELIMITER ;
call procedure_Product();
drop procedure if exists add_Product;
DELIMITER //
create procedure add_Product(in productCode varchar(20) , in productName varchar(20) , 
in productPrice int  , 
in productAmount int  , 
in productDescription varchar(50) ,
in productStatus varchar (20)  )
begin 
	insert into Product ( productCode , productName , productPrice , productAmount , productDescription
    , productStatus)
    values( productCode , productName , productPrice , productAmount , productDescription
    , productStatus);
end //
DELIMITER ;
call add_Product('P006', 'Product 6' , 35, 120 , 'Description 6' , 0);
drop procedure if exists drop_Product;
DELIMITER //
create procedure drop_Product (in IdDrop int)
begin 
	delete from Product 
    where Id = IdDrop ;
end //
DELIMITER ;
call drop_Product(6);
drop procedure if exists set_Product ;
DELIMITER //
create procedure set_Product (in IdSet int ,in productCode varchar(20) , in productName varchar(20) , 
in productPrice int  , 
in productAmount int  , 
in productDescription varchar(50) ,
in productStatus varchar (20) )
begin 
update Product set
productCode = productCode,
productName =  productName,
productPrice = productPrice,
productAmount = productAmount, 
productDescription = productDescription,
productStatus = productStatus
where Id = IdSet ;
End //
DELIMITER ;
call set_Product(2,'P001','Product 1', 10 ,50 , 'Description 1' , 0);