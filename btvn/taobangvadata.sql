CREATE DATABASE IF NOT EXISTS c0422g1;

CREATE TABLE class_type(
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50)
);
CREATE TABLE class(
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50),
class_type_id INT,
FOREIGN KEY(class_type_id) REFERENCES class_type(id)
);
CREATE TABLE jame (
`account` VARCHAR(50),
`password` VARCHAR(25),
PRIMARY KEY (`account`)
);
CREATE TABLE student(
 id INT PRIMARY KEY AUTO_INCREMENT,
 `name` vARCHAR(50),
 birthday DATE,
 gender BOOLEAN,
 email VARCHAR(50),
 `point` INT,
 `account` VARCHAR(50),
 class_id INT,
 FOREIGN KEY(`account`) REFERENCES jame(`account`),
 FOREIGN KEY(class_id) REFERENCES class(id)
 );
CREATE TABLE instructor(
 id INT PRIMARY KEY AUTO_INCREMENT,
 `name` VARCHAR(50),
 birthday DATE,
 salary FLOAT
);

CREATE TABLE instructor_class(
class_id INT,
instructor_id INT,
start_time DATE,
PRIMARY KEY(class_id,instructor_id),
FOREIGN KEY(class_id) REFERENCES class(id),
FOREIGN KEY(instructor_id) REFERENCES instructor(id)
);


-- Nhập thông tin cho bảng 
INSERT INTO class_type (`name`) VALUES ('full time'), ('part time'),('orther');

INSERT INTO class (`name`,class_type_id) VALUES ('c1121g1',1), ('c1221g1',1),('a0821i1',2),('a0921i1',2);

INSERT INTO jame(`account`,`password`) VALUES ('cunn','12345'),
											  ('chunglh','12345'),
                                              ('hoanhh','12345'),
                                              ('dungd','12345'),
                                              ('huynhtd','12345'),
                                              ('hainm','12345'),
                                              ('namtv','12345'),
                                              ('hieuvm','12345'),
                                              ('kynx','12345'),
                                              ('vulm','12345');

INSERT INTO jame(`account`,`password`) VALUES ('anv','12345'),
											  ('bnv','12345');

 
INSERT INTO instructor(`name`,birthday, salary) VALUES ('tran van chanh','1985-02-03',100),
													   ('tran minh chien','1985-02-03',200),
                                                       ('vu thanh tien','1985-02-03',300);
INSERT INTO instructor(`name`,birthday, salary) VALUES ('tran van nam','1989-12-12',100);

 
 INSERT INTO student(`name`,birthday, gender,`point`, class_id,`account`) 
 VALUES ('nguyen ngoc cu','1981-12-12',1,8,1,'cunn'),
 ('le hai chung','1981-12-12',1,5,1,'chunglh'),
 ('hoang huu hoan','1990-12-12',1,6,2,'hoanhh'),('dau dung','1987-12-12',1,8,1,'dungd'),
 ('ta dinh huynh','1981-12-12',1,7,2,'huynhtd'),('nguyen minh hai','1987-12-12',1,9,1,'hainm'),
 ('tran van nam','1989-12-12',1,4,2,'namtv'),('vo minh hieu','1981-12-12',1,3,1,'hieuvm'),
 ('le xuan ky','1981-12-12',1,7,2,'kynx'),('le minh vu','1981-12-12',1,7,1,'vulm');

 INSERT INTO student(`name`,birthday, gender,`point`, class_id,`account`) 
 VALUES ('nguyen van a','1981-12-12',1,8,null,'anv'),('tran van b','1981-12-12',1,5,null,'bnv');

 INSERT INTO instructor_class(class_id,instructor_id) VALUES (1,1),(1,2),(2,1),(2,2),(3,1),(3,2);

SELECT * FROM class_type;
SELECT* FROM class;
SELECT* FROM student;
SELECT* FROM jame;
SELECT* FROM instructor;
SELECT * FROM student;
SELECT * FROM instructor_class;

-- 