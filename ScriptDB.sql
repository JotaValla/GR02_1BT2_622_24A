CREATE DATABASE addpuppy_db 

CREATE TABLE addpuppy_db.pet (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NULL,
  breed VARCHAR(45) NULL,
  age INT NULL,
  PRIMARY KEY (id));
