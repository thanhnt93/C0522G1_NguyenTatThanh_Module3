CREATE DATABASE demo;
USE demo;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

TRUNCATE users;

INSERT INTO users(name, email, country) values('Nguyễn Tất Thành','thanhnt@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Bùi Hùng','hungb@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Hoàng Minh Trí','trihm@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Trần Đặng Quang Anh','anhtdq@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Nguyễn Tấn Huân','huannt@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Đặng Thị Thủy Tiên','tiendtt@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Nguyễn Văn Thanh','thanhnv@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Huỳnh Trung Thuyên','thuyenht@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Hà Bảo Ân','anhb@codegym.vn','Đà Nẵng');
INSERT INTO users(name, email, country) values('Phan Phước Đại','daipp@codegym.vn','Đà Nẵng');

