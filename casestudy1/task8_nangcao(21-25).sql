-- 21.	Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có
--  địa chỉ là “Hải Châu” và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với
--  ngày lập hợp đồng là “12/12/2019”.

CREATE VIEW v_nhan_vien 
AS 
SELECT nv.ma_nhan_vien , nv.ho_ten , nv.dia_chi , hd.ngay_lam_hop_dong
FROM nhan_vien nv
INNER JOIN hop_dong hd ON nv.ma_nhan_vien = hd.ma_nhan_vien
WHERE nv.dia_chi LIKE '%Đà Nẵng%' AND hd.ngay_lam_hop_dong = '2019-12-12';


insert into hop_dong(ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu) 
values
(14,'2019-12-12','2020-01-12',0,1,10,1);
-- 22.	Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành
--  “Liên Chiểu” đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.

UPDATE v_nhan_vien 
SET dia_chi = 'Liên Chiểu';

-- 23.	Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó với ma_khach_hang được truyền
--  vào như là 1 tham số của sp_xoa_khach_hang.

DELIMITER //
CREATE PROCEDURE sp_xoa_khach_hang(IN p_ma_khach_hang int)
BEGIN
-- DELETE FROM khach_hang
UPDATE khach_hang SET trang_thai = 1
WHERE ma_khach_hang = p_ma_khach_hang;
END //
DELIMITER ;

CALL sp_xoa_khach_hang(2);

-- 24.	Tạo Stored Procedure sp_them_moi_hop_dong dùng để thêm mới vào bảng hop_dong với yêu cầu 
-- sp_them_moi_hop_dong phải thực hiện kiểm tra tính hợp lệ của dữ liệu bổ sung, với nguyên tắc 
-- không được trùng khóa chính và đảm bảo toàn vẹn tham chiếu đến các bảng liên quan.

 DELIMITER //
CREATE PROCEDURE sp_them_moi_hop_dong(IN ma_hop_dong INT,IN ngay_lam_hop_dong DATETIME, IN ngay_ket_thuc DATETIME, IN tien_dat_coc DOUBLE, IN ma_nhan_vien INT ,
                                IN ma_khach_hang INT, IN ma_dich_vu INT)
                               
BEGIN
    INSERT INTO hop_dong(ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien , ma_khach_hang , ma_dich_vu) 
    VALUES (ma_hop_dong, ngay_lam_hop_dong , ngay_ket_thuc , tien_dat_coc , ma_nhan_vien , ma_khach_hang , ma_dich_vu);
end//
DELIMITER ;

call sp_them_moi_hop_dong(13, '2020-12-08', '2020-12-08', 0, 3, 1, 3);

-- 25.	Tạo Trigger có tên tr_xoa_hop_dong khi xóa bản ghi trong bảng hop_dong thì hiển thị tổng số lượng bản ghi 
-- còn lại có trong bảng hop_dong ra giao diện console của database.
-- Lưu ý: Đối với MySQL thì sử dụng SIGNAL hoặc ghi log thay cho việc ghi ở console.
