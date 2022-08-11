-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
-- Bảng QuanLySinhVien
SELECT * 
FROM `subject`
WHERE credit = (SELECT MAX(credit) 
			    FROM `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.

SELECT s.studentid, m.markid, sb.subname, MAX(mark) diem_thi_cao_nhat
FROM student s 
INNER JOIN mark m 
	ON s.studentid = m.studentid
INNER JOIN `subject` sb
	ON m.subid = sb.subid
GROUP BY m.markid
HAVING diem_thi_cao_nhat >= ALL (SELECT MAX(Mark) 
								 FROM mark 
								 GROUP BY studentid);
                         
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần        

SELECT s.studentid, s.studentname , avg(mark) diem_trung_binh
FROM student s
JOIN mark m 
	ON s.studentid = m.markid
GROUP BY studentid
ORDER BY diem_trung_binh DESC ;
                 
SELECT * FROM subject;                         
SELECT * FROM mark;                         
SELECT * FROM student;                         