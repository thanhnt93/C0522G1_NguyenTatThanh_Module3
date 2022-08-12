-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
DELIMITER //
CREATE PROCEDURE store_procedure()
begin
SELECT * FROM products;
END //
DELIMITER ;

CALL store_procedure();

-- Tạo store procedure thêm một sản phẩm mới
DELIMITER //
CREATE PROCEDURE add_procedure(IN id INT, IN product_code INT, IN product_name VARCHAR(20), IN product_price INT, IN product_amount INT, IN product_description varchar(50), IN product_status INT)
begin
INSERT INTO products()
VALUES (id, product_code, product_name, product_price, product_amount, product_description, product_status);
END //
DELIMITER ;

CALL add_procedure(5, 005, 'bao cao nhua', 40000, 20, 'sieu mong, chuoi, gai, keo dai thoi gian quan he',1);

-- Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER //
CREATE PROCEDURE update_procedure(IN pprice INT, IN i INT)
begin
UPDATE products SET product_price = pprice WHERE id = i;
END //
DELIMITER ;

CALL update_procedure(30000, 1);

-- Tạo store procedure xoá sản phẩm theo id
DELIMITER //
CREATE PROCEDURE delete_procedure(IN i INT)
begin
DELETE FROM products WHERE id = i;
END //
DELIMITER ;

CALL delete_procedure(5);