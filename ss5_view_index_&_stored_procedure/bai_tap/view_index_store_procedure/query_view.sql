-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW w_products AS
SELECT product_code, product_name, product_price, product_status
FROM products;

SELECT * FROM w_products;

-- Tiến hành sửa đổi view
ALTER VIEW  w_products
AS
SELECT product_code,product_name,product_price,product_status,product_amount
FROM products;

-- Tiến hành xoá view
DROP VIEW w_products;