CREATE DATABASE books_db;
USE books_db;

CREATE TABLE users
(
	id int NOT NULL AUTO_INCREMENT,
	userName varchar(255) NOT NULL,
    userPassword varchar(255) NOT NULL,
    userEmail varchar(255) NOT NULL,
	PRIMARY KEY (id)
);