CREATE DATABASE demo;
USE demo;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

CREATE TABLE cmnd (
  id INT,
  cmnd int NULL,
  PRIMARY KEY (id));


TRUNCATE users;
TRUNCATE cmnd;

INSERT INTO users(name, email, country) values('Nguyễn Tất Thành','thanhnt@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Bùi Hùng','hungb@codegym.vn','Quảng Nam');
INSERT INTO users(name, email, country) values('Hoàng Minh Trí','trihm@codegym.vn','Huế');
INSERT INTO users(name, email, country) values('Trần Đặng Quang Anh','anhtdq@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Nguyễn Tấn Huân','huannt@codegym.vn','Quãng Ngãi');
INSERT INTO users(name, email, country) values('Đặng Thị Thủy Tiên','tiendtt@codegym.vn','Huế');
INSERT INTO users(name, email, country) values('Nguyễn Văn Thanh','thanhnv@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Huỳnh Trung Thuyên','thuyenht@codegym.vn','Quảng Nam');
INSERT INTO users(name, email, country) values('Hà Bảo Ân','anhb@codegym.vn','Hà Lụi');
INSERT INTO users(name, email, country) values('Phan Phước Đại','daipp@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Hồ Xuân Bảo','baohx@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Nguyễn Văn Phúc','phucnv@codegym.vn','Quảng Nam');
INSERT INTO users(name, email, country) values('Bùi Chí Bảo','baocb@codegym.vn','Hà Lụi');
INSERT INTO users(name, email, country) values('Nguyễn Duy Quyết','quyetnd@codegym.vn','Đà Nẵng');

INSERT INTO cmnd() values(1, 12323423);
INSERT INTO cmnd() values(2, 45343333);
INSERT INTO cmnd() values(3, 32324333);
INSERT INTO cmnd() values(4, 72423233);
INSERT INTO cmnd() values(5, 32534543);
INSERT INTO cmnd() values(6, 923634443);
INSERT INTO cmnd() values(7, 122342323);

SELECT u.name, u.email, u.country, c.cmnd
FROM users u
INNER JOIN cmnd c ON u.id = c.id;
