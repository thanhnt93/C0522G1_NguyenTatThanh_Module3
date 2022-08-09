CREATE SCHEMA quanlybanhang ;

CREATE TABLE customer (
  cID INT,
  cName VARCHAR(45) NULL,
  cAge INT NULL,
  PRIMARY KEY (cID));

CREATE TABLE `order` (
  oID INT,
  cID INT,
  oDate DATE NULL,
  oTotalPrice INT NULL,
  PRIMARY KEY (oID));
  
  CREATE TABLE orderdetail (
  oID INT,
  pID INT,
  odQT VARCHAR(45) NULL,
  PRIMARY KEY (oID, pID));
  
  CREATE TABLE product (
  pID INT,
  pName VARCHAR(45) NULL,
  pPrice VARCHAR(45) NULL,
  PRIMARY KEY (pID));

  ALTER TABLE `order` ADD FOREIGN KEY(cID) REFERENCES customer(cID);
  ALTER TABLE orderdetail ADD FOREIGN KEY(oID) REFERENCES `order`(oID);
  ALTER TABLE orderdetail ADD FOREIGN KEY(pID) REFERENCES product(pID);


