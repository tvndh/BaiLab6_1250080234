CREATE TABLE NganHang (
    MaNH VARCHAR2(10) PRIMARY KEY,
    TenNH VARCHAR2(100) NOT NULL
);

CREATE TABLE ChiNhanh (
    MaCN VARCHAR2(10) PRIMARY KEY,
    MaNH VARCHAR2(10),
    ThanhPhoCN VARCHAR2(50),
    TaiSan NUMBER(15, 2),
    CONSTRAINT FK_ChiNhanh_NganHang FOREIGN KEY (MaNH) REFERENCES NganHang(MaNH)
);


CREATE TABLE KhachHang (
    MaKH VARCHAR2(10) PRIMARY KEY,
    TenKH VARCHAR2(50) NOT NULL,
    DiaChi VARCHAR2(100)
);


CREATE TABLE TaiKhoanVay (
    SoTKV VARCHAR2(20) PRIMARY KEY,
    MaKH VARCHAR2(10),
    MaCN VARCHAR2(10),
    SoTienVay NUMBER(15, 2),
    CONSTRAINT FK_Vay_KhachHang FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    CONSTRAINT FK_Vay_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);

CREATE TABLE TaiKhoanGoi (
    SoTKG VARCHAR2(20) PRIMARY KEY,
    MaKH VARCHAR2(10),
    MaCN VARCHAR2(10),
    SoTienGoi NUMBER(15, 2),
    CONSTRAINT FK_Goi_KhachHang FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    CONSTRAINT FK_Goi_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);
INSERT ALL
  INTO NganHang (MaNH, TenNH) VALUES ('1', 'Ngan Hang Cong Thuong')
  INTO NganHang (MaNH, TenNH) VALUES ('2', 'Ngan Hang Ngoai Thuong')
  INTO NganHang (MaNH, TenNH) VALUES ('3', 'Ngan Hang Nong Nghiep')
  INTO NganHang (MaNH, TenNH) VALUES ('4', 'Ngan Hang A Chau')
  INTO NganHang (MaNH, TenNH) VALUES ('5', 'Ngan Hang Thuong Tin')
SELECT * FROM dual;.
COMMIT;
INSERT ALL
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('1', 'CN01', 'Da Lat', 2000000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('2', 'CN02', 'Nha Trang', 2700000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('3', 'CN03', 'Thanh Hoa', 4500000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('4', 'CN04', 'TP HCM', 6000000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('5', 'CN05', 'Da Nang', 7000000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('1', 'CN11', 'TP HCM', 5000000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('2', 'CN12', 'Hue', 1400000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('3', 'CN13', 'Da Nang', 3600000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('4', 'CN14', 'Ha Noi', 5700000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('1', 'CN21', 'Ha Noi', 3500000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('2', 'CN22', 'Ha Noi', 4500000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('3', 'CN23', 'Da Lat', 2400000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('1', 'CN31', 'Da Nang', 4000000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('2', 'CN32', 'TP HCM', 5600000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('3', 'CN33', 'Can Tho', 5400000000)
  INTO ChiNhanh (MaNH, MaCN, ThanhPhoCN, TaiSan) VALUES ('3', 'CN43', 'Nam Dinh', 3600000000)
SELECT * FROM dual;.
COMMIT;
INSERT ALL
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('1', 'Nguyen Van An', 'Da Lat')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('2', 'Le Van Binh', 'Nha Trang')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('3', 'Tran Thi Chinh', 'Thanh Hoa')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('4', 'Pham Van Danh', 'TP HCM')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('5', 'Hoang Thi En', 'Da Nang')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('6', 'Ngo Van Giang', 'TP HCM')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('7', 'Doan Thi Hoa', 'Hue')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('8', 'Bui Van In', 'Da Nang')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('9', 'Ly Van Khanh', 'Ha Noi')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('10', 'Dinh Thi Lan', 'Ha Noi')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('11', 'Quach Van Minh', 'Ha Noi')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('12', 'Luong Thi Nam', 'Da Lat')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('13', 'Vu Van Oanh', 'Da Nang')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('14', 'Phan Van Phuc', 'TP HCM')
  INTO KhachHang (MaKH, TenKH, DiaChi) VALUES ('15', 'Truong Van Quang', 'Can Tho')
SELECT * FROM dual;.
COMMIT;
INSERT ALL
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG01', '1', 'CN01', 5000000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG02', '2', 'CN02', 2000000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG03', '3', 'CN03', 7000000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG04', '4', 'CN04', 1500000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG05', '5', 'CN05', 8000000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG06', '6', 'CN11', 3500000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG07', '7', 'CN12', 4000000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG08', '8', 'CN13', 2500000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG09', '9', 'CN14', 9000000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG10', '10', 'CN21', 1200000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG11', '11', 'CN22', 6500000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG12', '12', 'CN23', 4500000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG13', '13', 'CN31', 3000000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG14', '14', 'CN32', 5500000)
  INTO TaiKhoanGoi (SoTKG, MaKH, MaCN, SoTienGoi) VALUES ('TG15', '15', 'CN33', 7500000)
SELECT * FROM dual;.
COMMIT;
INSERT ALL
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V01', '1', 'CN01', 10000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V02', '2', 'CN02', 20000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V03', '3', 'CN03', 15000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V04', '4', 'CN04', 30000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V05', '5', 'CN05', 25000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V06', '6', 'CN11', 50000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V07', '7', 'CN12', 12000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V08', '8', 'CN13', 18000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V09', '9', 'CN14', 40000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V10', '10', 'CN21', 22000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V11', '11', 'CN22', 35000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V12', '12', 'CN23', 28000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V13', '13', 'CN31', 45000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V14', '14', 'CN32', 60000000)
  INTO TaiKhoanVay (SoTKV, MaKH, MaCN, SoTienVay) VALUES ('V15', '15', 'CN33', 100000000)
SELECT * FROM dual;.
COMMIT;
-- 1
SELECT DISTINCT n.TenNH 
FROM NganHang n 
JOIN ChiNhanh c ON n.MaNH = c.MaNH 
WHERE c.ThanhPhoCN = 'Da Lat';

-- 2
SELECT DISTINCT ThanhPhoCN 
FROM ChiNhanh c 
JOIN NganHang n ON c.MaNH = n.MaNH 
WHERE n.TenNH = 'Ngan Hang Cong Thuong';

-- 3
SELECT c.* FROM ChiNhanh c 
JOIN NganHang n ON c.MaNH = n.MaNH 
WHERE n.TenNH = 'Ngan Hang Cong Thuong' AND c.ThanhPhoCN = 'TP HCM';

-- 4
SELECT n.TenNH, c.MaCN, c.ThanhPhoCN, c.TaiSan 
FROM NganHang n 
JOIN ChiNhanh c ON n.MaNH = c.MaNH;

-- 5
SELECT * FROM KhachHang WHERE DiaChi = 'Ha Noi';

-- 6
SELECT * FROM KhachHang WHERE TenKH LIKE '%Son';

-- 7
SELECT * FROM KhachHang WHERE DiaChi LIKE '%Tran Hung Dao%';

-- 8
SELECT * FROM KhachHang WHERE TenKH LIKE '%Thao';

-- 9
SELECT * FROM KhachHang 
WHERE MaKH LIKE '11%' AND DiaChi = 'TP HCM';

-- 10
SELECT n.TenNH, c.ThanhPhoCN, c.TaiSan 
FROM NganHang n 
JOIN ChiNhanh c ON n.MaNH = c.MaNH 
ORDER BY c.TaiSan ASC, c.ThanhPhoCN ASC;

-- 11
SELECT n.TenNH, c.* FROM ChiNhanh c 
JOIN NganHang n ON c.MaNH = n.MaNH 
WHERE c.TaiSan > 3000000000 AND c.TaiSan < 5000000000;

-- 12
SELECT n.TenNH, AVG(c.TaiSan) as TaiSanTrungBinh 
FROM NganHang n 
JOIN ChiNhanh c ON n.MaNH = c.MaNH 
GROUP BY n.TenNH;

-- 13
SELECT k.* FROM KhachHang k
JOIN TaiKhoanVay v ON k.MaKH = v.MaKH
JOIN ChiNhanh c ON v.MaCN = c.MaCN
JOIN NganHang n ON c.MaNH = n.MaNH
WHERE n.TenNH = 'Ngan Hang Cong Thuong' AND k.TenKH LIKE '%Thao';

-- 14
SELECT n.TenNH, SUM(c.TaiSan) as TongTaiSan 
FROM NganHang n 
JOIN ChiNhanh c ON n.MaNH = c.MaNH 
GROUP BY n.TenNH;

-- 15
SELECT MaCN, TaiSan 
FROM ChiNhanh 
WHERE TaiSan = (SELECT MAX(TaiSan) FROM ChiNhanh);

-- 16
SELECT DISTINCT k.* FROM KhachHang k
JOIN TaiKhoanGoi g ON k.MaKH = g.MaKH
JOIN ChiNhanh c ON g.MaCN = c.MaCN
JOIN NganHang n ON c.MaNH = n.MaNH
WHERE n.TenNH = 'Ngan Hang A Chau';

-- 17
SELECT v.SoTKV 
FROM TaiKhoanVay v
JOIN ChiNhanh c ON v.MaCN = c.MaCN
JOIN NganHang n ON c.MaNH = n.MaNH
WHERE n.TenNH = 'Ngan Hang Ngoai Thuong' AND v.SoTienVay > 1200000;

-- 18
SELECT MaCN, SUM(SoTienGoi) as TongTienGoi 
FROM TaiKhoanGoi 
GROUP BY MaCN;

-- 19
SELECT k.TenKH, v.SoTKV, v.SoTienVay, g.SoTKG, g.SoTienGoi
FROM KhachHang k
LEFT JOIN TaiKhoanVay v ON k.MaKH = v.MaKH
LEFT JOIN TaiKhoanGoi g ON k.MaKH = g.MaKH
WHERE k.TenKH LIKE '%Son';

-- 20
SELECT k.MaKH, k.TenKH, SUM(v.SoTienVay) as TongVay
FROM KhachHang k
JOIN TaiKhoanVay v ON k.MaKH = v.MaKH
GROUP BY k.MaKH, k.TenKH
HAVING SUM(v.SoTienVay) > 30000000;
