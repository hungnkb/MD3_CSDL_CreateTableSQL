create database QuanLyDiemThi;
use QuanLyDiemThi;
create table HocSinh(
MaHS varchar(20) primary key,
TenHS varchar(50) not null,
Lop varchar(10) not null,
GT varchar(20)
);
create table MonHoc (
MaMH varchar(20) primary key not null,
TenMH varchar(50) not null,
MaGV varchar(50)
);
create table BangDiem(
MaHS varchar(20),
MaMH varchar(20),
foreign key (MaHS) references HocSinh(MaHS),
foreign key (MaMH) references MonHoc(MaMH),
DiemThi int,
NgayKT datetime
);
create table GiaoVien(
MaGV varchar(20) primary key not null,
TenGV varchar(50) not null,
SDT varchar(12)
);


alter table MonHoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);

