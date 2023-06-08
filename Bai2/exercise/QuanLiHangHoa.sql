create database QuanLiHangHoa ;
use QuanLiHangHoa;
create table PhieuXuat(
	SoPX int not null primary key , 
	NgayXuat datetime
);
create table VatTu(
	MaVTU varchar (20) not null primary key , 
	TenVTU varchar(30)
);
create table ChiTietPhieuXuat(
	DGXuat int not null ,
	SLXuat int not null ,
	SoPX int not null , 
	MaVTU varchar(30) not null,
	primary key(SoPX , MaVTU),
	foreign key (SoPX) references PhieuXuat(SoPX),
	foreign key (MaVTU) references VatTu(MaVTU)
);
create table PhieuNhap(
	SoPN int not null primary key ,
	NgayNhap datetime 
);
create table ChiTietPhieuNhap(
	MaVTU varchar(20) not null ,
	SoPN int not null , 
	DGNhap int not null , 
	SLNhap int not null ,
	primary key(MaVTU, SoPN),
	foreign key (MaVTU) references VatTu(MaVTU),
	foreign key (SoPn) references PhieuNhap(SoPN) 
);
create table SDT(
	SDT varchar(10)  primary key
);
create table NhaCC(
	MaNCC varchar(20)  primary key ,
	TenNCC varchar(30) not null , 
	DiaChi varchar(50) not null ,
	SDT varchar(10), 
	foreign key (SDT) references SDT(SDT)
);
create table DonDH(
	SoDH int not null primary key , 
	NgayDH datetime,
	MaNCC varchar(20) ,
	foreign key (MaNCC) references NhaCC(MaNCC)
);
create table ChiTietDonDatHang(
	MaVTU varchar(20) not null ,
	SoDH int not null , 
	primary key(MaVTU,SoDH),
	foreign key (MaVTU) references VatTu(MaVTU),
	foreign key (SoDH) references DonDH(SoDH)
);