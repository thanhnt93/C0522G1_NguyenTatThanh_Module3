CREATE DATABASE demo ;

CREATE TABLE products(
id INT PRIMARY KEY,	
product_code INT NOT NULL,
product_name VARCHAR(45) NOT NULL,
product_price INT NOT NULL,
product_amount INT NOT NULL,
product_description VARCHAR(100) NOT NULL,
product_status INT NOT NULL
);

INSERT INTO products(id, product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES
(1, 001, 'kem danh rang', 10000, 5, 'trang rang, thom mat, hoi tho dai lau, tat tho thi nho nhau',1),
(2, 002, 'gel boi tron', 20000, 1, 'goc nuoc, mui dau, khong dinh, tat tho thi nho nhau',0),
(3, 003, 'chip-chip', 30000, 1000, 'keo deo, mui trai cay, ngot nhe, tat tho thi nho nhau',1),
(4, 004, 'bao cao su', 40000, 20, 'sieu mong, chuoi, gai, keo dai thoi gian quan he',1);
