-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-01-21 14:49:54.626


Create database QUANGTVPH03494QLBH
Go

-- tables
-- Table: CHITIETHOADON
CREATE TABLE CHITIETHOADON (
    MAHD nvarchar (10) NOT NULL,
    MASP nvarchar (10) NOT NULL,
    SOLUONG int  NOT NULL
)
;





-- Table: HOADON
CREATE TABLE HOADON (
    MAHD nvarchar (10) NOT NULL,
    MAKH nvarchar (10) NOT NULL,
    GIATIEN money  NOT NULL,
    CONSTRAINT HOADON_pk PRIMARY KEY  (MAHD)
)
;





-- Table: KHACHHANG

CREATE TABLE KHACHHANG (
    MAKH nvarchar (10) NOT NULL,
    TENKH nvarchar (50) NOT NULL,
    email varchar (25) NULL,
    SDT int  NULL,
    DIACHI nvarchar  NULL,
    CONSTRAINT KHACHHANG_pk PRIMARY KEY  (MAKH)
)
;





-- Table: LOAISP
CREATE TABLE LOAISP (
    MALOAISP nvarchar (10) NOT NULL,
    TENLOAISP nvarchar (10) NOT NULL,
    SOLUONG int NOT NULL,
    CONSTRAINT LOAISP_pk PRIMARY KEY  (MALOAISP)
)
;





-- Table: San Pham
CREATE TABLE SanPham (
    MASP nvarchar (10) NOT NULL,
    TENSP nvarchar (10) NOT NULL,
    MALOAISP nvarchar (10) NOT NULL,
    MOTA nvarchar (10) NULL,
    Dinhgia money  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY  (MASP)
)
;









-- foreign keys
-- Reference:  client_purchase (table: HOADON)

ALTER TABLE HOADON ADD CONSTRAINT client_purchase 
    FOREIGN KEY (MAKH)
    REFERENCES KHACHHANG (MAKH)
;

-- Reference:  product_category_product (table: San Pham)

ALTER TABLE SanPham ADD CONSTRAINT product_category_product 
    FOREIGN KEY (MALOAISP)
    REFERENCES LOAISP (MALOAISP)
;

-- Reference:  product_purchase_item (table: CHITIETHOADON)

ALTER TABLE CHITIETHOADON ADD CONSTRAINT product_purchase_item 
    FOREIGN KEY (MAHD)
    REFERENCES HOADON (MAHD)
;

-- Reference:  purchase_purchase_item (table: CHITIETHOADON)

ALTER TABLE CHITIETHOADON ADD CONSTRAINT purchase_purchase_item 
    FOREIGN KEY (MASP)
    REFERENCES SANPHAM (MASP)
;





-- End of file.
delete dbo.KHACHHANG
insert into dbo.KHACHHANG values ('MAKH001',N'NGUYEN VAN MANH','nguyenvanmanh99@gmail.com',NULL,NULL)
insert into dbo.KHACHHANG values ('MAKH002',N'NGUYỄN VĂN CHIẾN','chienngd@gmail.com',NULL,NULL)
insert into dbo.KHACHHANG values ('MAKH003',N'TRỊNH VĂN MINH','Minhcc87@gmail.com',NULL,NULL)
insert into dbo.KHACHHANG values ('MAKH004',N'HOÀNG THỊ QUỲNH','quynhdd98@gmail.com',NULL,NULL)
insert into dbo.KHACHHANG values ('MAKH005',N'BÙI ĐỨC TOÀN','toanhdch@gmail.com',NULL,NULL)

Delete dbo.HOADON
insert into dbo.HOADON values ('MAHD001','MAKH001',1000.000)
insert into dbo.HOADON values ('MAHD002','MAKH002',4000.000)
insert into dbo.HOADON values ('MAHD003','MAKH003',700.000)
insert into dbo.HOADON values ('MAHD004','MAKH004',400.000)
insert into dbo.HOADON values ('MAHD005','MAKH005',3000.000)


delete dbo.LOAISP
insert INto dbo.LOAISP values ('MLSP01','IOS',30)
INSERT INTO dbo.LOAISP VALUES ('MLSP02','ANDROID',30)
INSERT INTO dbo.LOAISP VALUES ('MLSP03','JAVA',10)
INSERT INTO dbo.LOAISP VALUES ('MLSP04','SYMBIAN',20)
INSERT INTO dbo.LOAISP VALUES ('MLSP05','WINPHONE',30)

delete dbo.SanPham
insert into dbo.SanPham values ('MASP01','IPHONE7','MLSP01',NULL,12000000)
insert into dbo.SanPham values ('MASP02','IPHONE6','MLSP01',NULL,10000000)
insert into dbo.SanPham values ('MASP03','SAMSUNG S6','MLSP02',NULL,15000000)
insert into dbo.SanPham values ('MASP05','OMINIA 7','MLSP05',NULL,8000000)
insert into dbo.SanPham values ('MASP07','SKY870','MLSP02',NULL,12000000)

Delete dbo.CHITIETHOADON
Insert into dbo.CHITIETHOADON values ('MAHD001','MaSP01',20)
Insert into dbo.CHITIETHOADON values ('MAHD002','MaSP03',10)
Insert into dbo.CHITIETHOADON values ('MAHD003','MaSP01',20)
Insert into dbo.CHITIETHOADON values ('MAHD004','MaSP05',90)
Insert into dbo.CHITIETHOADON values ('MAHD005','MaSP07',40)



select * from dbo.KHACHHANG
select * from dbo.HOADON
select * from dbo.CHITIETHOADON
select * from dbo.LOAISP
select * from dbo.SanPham

