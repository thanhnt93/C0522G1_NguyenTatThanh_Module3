use c0422g1;
-- Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào. 
​
SELECT * FROM student;
​
SELECT st.id, st.`name`, st.birthday, st.gender, st.email, st.`point`, st.`account`, cl.`name` 
FROM student st 
JOIN class cl
	ON st.class_id = cl.id
ORDER BY st.id;

-- Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào và cả các bạn đã đăng ký nhưng chưa có lớp học.

SELECT * 
FROM student
JOIN jame 
	ON student.`account` = jame.`account`
ORDER BY student.id;

-- Lấy thông tin của các học viên tên 'Tien' và 'Toan’.
SELECT * 
FROM student 
WHERE `name` LIKE '%Tien%' OR `name` LIKE '%Toan%';

-- Lấy ra học viên có điểm lớn hơn 5 .
SELECT st.id, st.`name`, st.`point`
FROM student st
WHERE st.`point` > 5;

-- Lấy ra học viên có họ là “nguyen”
SELECT * 
FROM student 
WHERE `name` LIKE 'nguyen%';

-- Thông kế số lượng học sinh theo từng loại điểm.
SELECT st.`point`, COUNT(st.`point`) so_luong_hoc_sinh 
FROM student st
GROUP BY `point`
ORDER BY `point`;

-- Thông kế số lượng học sinh theo điểm và điểm phải lớn hơn 5
SELECT `point`, COUNT(`point`) so_luong_hoc_sinh 
FROM student 
WHERE `point` > 5
GROUP BY `point`
ORDER BY `point`;

-- Thông kế số lượng học sinh theo điểm lớn hơn 5 và chỉ hiện thị với số lượng>=2
SELECT `point`,count(`point`) so_luong_hoc_sinh
FROM student 
WHERE `point` > 5
GROUP BY `point`
HAVING count(`point`)>=2 
ORDER BY `point`;

-- Lấy ra danh sách học viên của lớp c1121g1 và sắp xếp tên học viên theo alphabet.
SELECT st.`name`, cl.`name` 
FROM student st
JOIN class cl
	ON st.class_id = cl.id
WHERE cl.`name` = 'c1121g1'
ORDER BY cl.`name`;