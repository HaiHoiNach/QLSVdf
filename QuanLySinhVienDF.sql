-- Tạo cơ sở dữ liệu
CREATE DATABASE QuanLySinhVienDF;
go
-- Sử dụng cơ sở dữ liệu mới được tạo
USE QuanLySinhVienDF;

-- Tạo bảng Khoa
CREATE TABLE Khoa (
    KhoaId INT PRIMARY KEY,
    TenKhoa NVARCHAR(MAX)
);

-- Tạo bảng Lop
CREATE TABLE Lop (
    LopId INT PRIMARY KEY,
    TenLop NVARCHAR(MAX),
    KhoaId INT FOREIGN KEY REFERENCES Khoa(KhoaId)
);

-- Tạo bảng SinhVien
CREATE TABLE SinhVien (
    SinhVienId INT PRIMARY KEY,
    TenSinhVien NVARCHAR(MAX),
    Tuoi INT,
    LopId INT FOREIGN KEY REFERENCES Lop(LopId)
);
-- Tạo dữ liệu cho bảng Khoa
INSERT INTO Khoa (KhoaId, TenKhoa) VALUES
(1, 'CNTT'),
(2, 'Kinh Te'),
(3, 'Ngoai Ngu');

-- Tạo dữ liệu cho bảng Lop
INSERT INTO Lop (LopId, TenLop, KhoaId) VALUES
(1, 'Lop A', 1),
(2, 'Lop B', 1),
(3, 'Lop C', 2),
(4, 'Lop D', 3);

-- Tạo dữ liệu cho bảng SinhVien
INSERT INTO SinhVien (SinhVienId, TenSinhVien, Tuoi, LopId) VALUES
(1, 'Tran Duc Ri', 19, 1),
(2, 'Duong Duc', 20, 2),
(3, 'Bisko', 18, 1),
(4, 'Huy Hoang', 20, 3),
(5, 'Tengicungduoc', 19, 2),
(6, 'Unknown', 18, 4),
(7, 'Lee Sin', 19, 3),
(8, 'Nguyen Van Hai', 20, 4),
(9, 'Hoang Thi Hoang', 18, 4),
(10, 'Tran Van Coang', 19, 3);
select * from sinhvien 
use master 
drop database QuanLySV