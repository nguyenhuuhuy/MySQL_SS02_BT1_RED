create database java10_md4_ss2_bt1;
use java10_md4_ss2_bt1;
create table PhieuXuat (
soPx int auto_increment primary key,
ngayXuat date
);

create table VatTu (
maVT int auto_increment primary key,
tenVT varchar(250)
);

create table PhieuNhap (
soPN int auto_increment primary key,
ngayNhap date
);

create table DonDH (
soDH int auto_increment primary key,
ngayDH varchar(230)
);

create table NhaCC (
MaNCC int auto_increment primary key,
tenNCC varchar(230),
diaChi varchar(250),
sdt int
);

create  table chiTietPhieuXuat (
DGXuat float,
SLXuat int,
soPX int,
maVTU int,
primary key(soPX,maVTU),
foreign key(soPX) references PhieuXuat(soPX),
foreign key(maVTU) references VatTu(maVT)
);

create table ChiTietPhieuNhap (
DGNhap float,
SLNhap int,
maVTU int,
soPN int,
primary key(maVTU,soPN),
foreign key(maVTU) references VatTu(maVT),
foreign key(soPN) references PhieuNhap(soPN)
);

create table ChiTietDonDatHang (
maVTU int,
soDH int,
primary key(maVTU,soDH),
foreign key(maVTU) references VatTu(maVT),
foreign key(soDH) references DonDH(soDH)
);
create table CungCap (
nhaCC int,
soDH int,
primary key (soDH),
foreign key(nhaCC) references nhaCC(maNCC),
foreign key(soDH) references donDH (soDH)
);


