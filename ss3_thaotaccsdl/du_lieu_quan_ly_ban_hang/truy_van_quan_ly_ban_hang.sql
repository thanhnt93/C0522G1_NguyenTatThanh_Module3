-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT *
FROM `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách

SELECT c.cname, p.pname
FROM customer c
INNER JOIN `order` o 
	ON c.cid = o.cid
INNER JOIN orderdetail od 
	ON o.oid = od.oid
INNER JOIN product p
	ON od.pid = p.pid
GROUP BY c.cname;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT c.cname
FROM customer c
LEFT JOIN `order` o
	ON c.cid = o.cid
WHERE o.odate IS NULL;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY*pPrice)

SELECT o.oid, o.odate, SUM(od.odqt * p.pPrice) as tong_tien_hoa_don
FROM `order` o
INNER JOIN orderdetail od 
	ON o.oid = od.oid
INNER JOIN product p 
	ON od.pid = p.pid
GROUP BY o.oid;


SELECT * FROM customer;
SELECT * FROM `order`;
SELECT * FROM orderdetail;
SELECT * FROM product;