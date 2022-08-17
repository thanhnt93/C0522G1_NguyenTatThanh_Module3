-- viêt 1 function xếp loại học lưc theo point
DELIMITER //
CREATE FUNCTION f_xep_loai(p_point int)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
DECLARE loai VARCHAR(20);
IF p_point >= 8 THEN
SET loai = 'giỏi';
ELSEIF p_point >= 7 THEN
SET loai = 'khá';
ELSEIF p_point >= 5 THEN
SET loai ='trung bình';
ELSE 
SET loai ='yếu';
END IF;
RETURN loai;
END //
DELIMITER ;

-- sử dụng function
SELECT f_xep_loai(8);
SELECT s.StudentId, s.StudentName, s.`Status`, f_xep_loai(s.`Status`) AS xep_loai
FROM student s;
   
-- 5 tạo trigger tự động tạo tài khoản jame trước khi thêm mới một học viên
SELECT * FROM student;
SELECT * FROM jame;
INSERT INTO student(StudentName,birthday, email, gender,`point`, class_id,`account`) 
VALUES ('Tran thi thuy vi','1990-12-12','vittt@gmail.com',1,8,1,'vittt@gmail.com')

DELIMITER //
CREATE TRIGGER tr_auto_create_jame 
BEFORE INSERT ON student
FOR EACH ROW
BEGIN
INSERT INTO jame(`account`, `password`) VALUES ( NEW.email, '123');
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER tr_history 
AFTER UPDATE ON student
FOR EACH ROW
BEGIN
insert into `history`(`name`, old_point, new_point, update_day) 
values ( OLD.`name`, OLD.`point`, NEW.`point`, now());
END //
DELIMITER ;

SELECT * FROM `history`;
SELECT * FROM student;


CREATE TABLE `history`(
id INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(50),
old_point INT,
new_point INT,
update_day date
);



