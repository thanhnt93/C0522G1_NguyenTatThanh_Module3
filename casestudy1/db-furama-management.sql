CREATE SCHEMA IF NOT EXISTS `furama-management`;

CREATE TABLE vi_tri (
  ma_vi_tri INT NOT NULL,
  ten_vi_tri VARCHAR(45) NULL,
  PRIMARY KEY (ma_vi_tri));

CREATE TABLE trinh_do (
  ma_trinh_do INT NOT NULL,
  ten_trinh_do VARCHAR(45) NULL,
  PRIMARY KEY (ma_trinh_do));
  
  CREATE TABLE bo_phan (
  ma_bo_phan INT,
  ten_bo_phan VARCHAR(45) NULL,
  PRIMARY KEY (ma_bo_phan));

CREATE TABLE nhan_vien (
  ma_nhan_vien INT,
  ho_ten VARCHAR(45) NULL,
  ngay_sinh DATE NULL,
  so_cmnd VARCHAR(45) NULL,
  luong DOUBLE NULL,
  so_dien_thoai VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  dia_chi VARCHAR(45) NULL,
  ma_vi_tri INT,
  ma_trinh_do INT,
  ma_bo_phan INT,
  PRIMARY KEY (ma_nhan_vien));
  
  ALTER TABLE nhan_vien ADD FOREIGN KEY(ma_vi_tri) REFERENCES vi_tri(ma_vi_tri);
  ALTER TABLE nhan_vien ADD FOREIGN KEY(ma_trinh_do) REFERENCES trinh_do(ma_trinh_do);
  ALTER TABLE nhan_vien ADD FOREIGN KEY(ma_bo_phan) REFERENCES bo_phan(ma_bo_phan);
  
  CREATE TABLE loai_khach (
  ma_loai_khach INT,
  ten_loai_khach VARCHAR(45) NULL,
  PRIMARY KEY (ma_loai_khach));
  
  CREATE TABLE khach_hang (
  ma_khach_hang INT,
  ma_loai_khach INT,
  ho_ten VARCHAR(45) NULL,
  ngay_sinh DATE NULL,
  gioi_tinh BIT(1) NULL,
  so_cmnd VARCHAR(45) NULL,
  so_dien_thoai VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  dia_chi VARCHAR(45) NULL,
  PRIMARY KEY (ma_khach_hang));
  
  ALTER TABLE khach_hang ADD FOREIGN KEY(ma_loai_khach) REFERENCES loai_khach(ma_loai_khach);
  
  
CREATE TABLE dich_vu_di_kem (
  ma_dich_vu_di_kem INT,
  ten_dich_vu_di_kem VARCHAR(45) NULL,
  gia DOUBLE NULL,
  don_vi VARCHAR(10) NULL,
  trang_thai VARCHAR(45) NULL,
  PRIMARY KEY (ma_dich_vu_di_kem));
  
  CREATE TABLE hop_dong_chi_tiet (
  ma_hop_dong_chi_tiet INT,
  ma_hop_dong INT,
  ma_dich_vu_di_kem INT,
  so_luong INT NULL,
  PRIMARY KEY (ma_hop_dong_chi_tiet));

ALTER TABLE hop_dong_chi_tiet ADD FOREIGN KEY(ma_dich_vu_di_kem) REFERENCES dich_vu_di_kem(ma_dich_vu_di_kem);

CREATE TABLE loai_dich_vu (
  ma_loai_dich_vu INT,
  ten_loai_dich_vu VARCHAR(45) NULL,
  PRIMARY KEY (ma_loai_dich_vu));

CREATE TABLE kieu_thue (
  ma_kieu_thue INT,
  ten_kieu_thue VARCHAR(45) NULL,
  PRIMARY KEY (ma_kieu_thue));
  
  CREATE TABLE dich_vu (
  ma_dich_vu INT,
  ten_dich_vu VARCHAR(45) NULL,
  dien_tich INT NULL,
  chi_phi_thue DOUBLE NULL,
  so_nguoi_toi_da INT NULL,
  ma_kieu_thue INT NOT NULL,
  ma_loai_dich_vu INT NOT NULL,
  tieu_chuan_phong VARCHAR(45) NULL,
  mo_ta_tien_nghi_khac VARCHAR(45) NULL,
  dien_tich_ho_boi DOUBLE NULL,
  so_tang INT NULL,
  dich_vu_mien_phi_di_kem TEXT NULL,
  PRIMARY KEY (ma_dich_vu));
  
  CREATE TABLE hop_dong (
  ma_hop_dong INT,
  ngay_lam_hop_dong DATETIME NULL,
  ngay_ket_thuc DATETIME NULL,
  tien_dat_coc DOUBLE NULL,
  ma_nhan_vien INT,
  ma_khach_hang INT,
  ma_dich_vu INT,
  PRIMARY KEY (ma_hop_dong));

  
  ALTER TABLE hop_dong_chi_tiet ADD FOREIGN KEY(ma_hop_dong) REFERENCES hop_dong(ma_hop_dong);
  ALTER TABLE dich_vu ADD FOREIGN KEY(ma_loai_dich_vu) REFERENCES loai_dich_vu(ma_loai_dich_vu);
  ALTER TABLE dich_vu ADD FOREIGN KEY(ma_kieu_thue) REFERENCES kieu_thue(ma_kieu_thue);
  ALTER TABLE hop_dong ADD FOREIGN KEY(ma_dich_vu) REFERENCES dich_vu(ma_dich_vu);
  ALTER TABLE hop_dong ADD FOREIGN KEY(ma_khach_hang) REFERENCES khach_hang(ma_khach_hang);
  ALTER TABLE hop_dong ADD FOREIGN KEY(ma_nhan_vien) REFERENCES nhan_vien(ma_nhan_vien);
  ALTER TABLE nhan_vien ADD FOREIGN KEY(ma_bo_phan) REFERENCES bo_phan(ma_bo_phan);