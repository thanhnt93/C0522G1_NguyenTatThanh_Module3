CREATE SCHEMA quanlybanhang ;

CREATE TABLE customer (
  cid INT,
  cname VARCHAR(45) NULL,
  cage INT NULL,
  PRIMARY KEY (cid));

CREATE TABLE `order` (
  oid INT,
  cid INT,
  odate DATE NULL,
  oprice INT NULL,
  PRIMARY KEY (oid));
  
  CREATE TABLE orderdetail (
  oid INT,
  pid INT,
  odqt VARCHAR(45) NULL,
  PRIMARY KEY (oid, pid));
  
  CREATE TABLE product (
  pid INT,
  pname VARCHAR(45) NULL,
  pPrice VARCHAR(45) NULL,
  PRIMARY KEY (pid));

  ALTER TABLE `order` ADD FOREIGN KEY(cid) REFERENCES customer(cid);
  ALTER TABLE orderdetail ADD FOREIGN KEY(oid) REFERENCES `order`(oid);
  ALTER TABLE orderdetail ADD FOREIGN KEY(pid) REFERENCES product(pid);


