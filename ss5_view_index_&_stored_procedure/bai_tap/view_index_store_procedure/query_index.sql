-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
ALTER TABLE products ADD UNIQUE INDEX index_product_code (product_code);
-- CREATE INDEX i_product_code ON products(product_code);

ALTER TABLE products DROP INDEX index_product_code;
-- DROP INDEX i_product_code ON products;

SELECT * FROM products;

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
ALTER TABLE products ADD INDEX index_composite (product_name, product_price);
-- CREATE INDEX i_composite ON products(product_name, product_price;

ALTER TABLE products DROP INDEX index_composite;
-- DROP INDEX i_composite ON products;


-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
EXPLAIN SELECT * FROM products WHERE product_code = 001;

EXPLAIN SELECT * FROM products WHERE product_name = 'kem danh rang';

-- So sánh câu truy vấn trước và sau khi tạo index

EXPLAIN SELECT * FROM products WHERE product_code = 003;

