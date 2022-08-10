-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
SELECT *
FROM student
WHERE StudentName LIKE 'H%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
SELECT *
FROM class
WHERE MONTH(StartDate) = 12;

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.

SELECT *
FROM subject
WHERE Credit BETWEEN 3 AND 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
UPDATE student 
SET ClassId = 2
WHERE StudentName = 'Hung';

-- Hiển thị các thông tin: StudentName, SubName, Mark. 
-- Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.

SELECT s.StudentName, sb.SubName, m.Mark
FROM student s
INNER JOIN mark m 
	ON s.StudentId = m.StudentId
INNER JOIN subject sb
	ON m.SubId = sb.SubId
ORDER BY m.Mark DESC, s.StudentName;

SELECT * FROM class;
SELECT * FROM subject;
SELECT * FROM student;
SELECT * FROM mark;

