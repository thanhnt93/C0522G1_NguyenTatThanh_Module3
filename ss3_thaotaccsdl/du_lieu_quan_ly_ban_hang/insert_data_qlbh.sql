INSERT INTO customer
VALUES
(1,'Minh Quan', 10),
(2,'Ngoc Oanh',20),
(3,'Hong Ha',50);

INSERT INTO `order`
VALUES
(1,1,'2006-03-21', NULL),
(2,2,'2006-03-22',NULL),
(3,1,'2006-03-16',NULL);

INSERT INTO product
VALUES
(1,'may giat',3),
(2,'tu lanh',5),
(3,'dieu hoa',7),
(4,'quat',1),
(5,'bep dien',2);

INSERT INTO orderdetail
VALUES
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);