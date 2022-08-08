CREATE SCHEMA `student-management`;

CREATE TABLE `student-management`.class (
  id int NOT NULL,
  name varchar(45) DEFAULT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE `student-management`.teacher (
  id int NOT NULL,
  name varchar(45) DEFAULT NULL,
  age varchar(45) DEFAULT NULL,
  country varchar(45) DEFAULT NULL,
  PRIMARY KEY (id)
);

INSERT INTO `student-management`.class (id,name) VALUES (1, 'Nguyễn Tất Thành');
INSERT INTO `student-management`.class (id,name) VALUES (2, 'Bùi Hùng');
INSERT INTO `student-management`.class (id,name) VALUES (3, 'Hà Bảo Ân');
INSERT INTO `student-management`.class (id,name) VALUES (4, 'Nguyễn Tấn Huân');
INSERT INTO `student-management`.class (id,name) VALUES (5, 'Hồ Hải Học');

INSERT INTO `student-management`.teacher (id, name, age, country) VALUES (1, 'Cong NT', '10', 'Đà Nẵng');
INSERT INTO `student-management`.teacher (id, name, age, country) VALUES (2, 'Quang NN', '10', 'Đà Nẵng ');
INSERT INTO `student-management`.teacher (id, name, age, country) VALUES (3, 'Chanh TV', '10', 'Đà Nẵng');
INSERT INTO `student-management`.teacher (id, name, age, country) VALUES (4, 'Trung DC', '10', 'Đà Nẵng');
INSERT INTO `student-management`.teacher (id, name, age, country) VALUES (5, 'Hai TT', '10', 'Đà Nẵng');






