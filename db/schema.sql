CREATE DATABASE gooderreads_db;
USE gooderreads_db;

-- MySQL dump 9.11
--
-- Host: localhost    Database: Book-Crossing
-- ------------------------------------------------------
-- Server version	4.0.20a-debug

--
-- Table structure for table user emails
--

CREATE TABLE userEmails (
  `userEmail` varchar(255) NOT NULL,
  `User-ID` int(11) NOT NULL,
  PRIMARY KEY (`userEmail`)
);

--
-- Table structure for table users
--

CREATE TABLE users (
  `User-ID` int(11) NOT NULL AUTO_INCREMENT,
  `Location` varchar(250) default NULL,
  `Age` int(11) default NULL,
  `userName` varchar(255) NOT NULL DEFAULT '',
  `userPassword` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`User-ID`)
);

--
-- Table structure for table books
--

CREATE TABLE books (
  `ISBN` varchar(13) binary NOT NULL default '',
  `Book-Title` varchar(255) default NULL,
  `Book-Author` varchar(255) default NULL,
  `Year-Of-Publication` int(10) unsigned default NULL,
  `Publisher` varchar(255) default NULL,
  `Image-URL-S` varchar(255) binary default NULL,
  `Image-URL-M` varchar(255) binary default NULL,
  `Image-URL-L` varchar(255) binary default NULL,
  PRIMARY KEY  (`ISBN`)
);

--
-- Table structure for table ratings
--

CREATE TABLE ratings (
  `User-ID` int(11) NOT NULL default '0',
  `ISBN` varchar(13) NOT NULL default '',
  `Book-Rating` int(11) NOT NULL default '0',
  PRIMARY KEY  (`User-ID`,`ISBN`)
);

--
-- Table structure for genres
--

CREATE TABLE genres (
  `Genre-ID` int(11) NOT NULL AUTO_INCREMENT,
  `genreName` varchar(255),
  PRIMARY KEY (`Genre-ID`)
);

--
-- Table structure for user genre preferences
--

CREATE TABLE genrePreferences (
  `User-ID` int(11) NOT NULL,
  `Genre-ID` int(11) NOT NULL,
  PRIMARY KEY  (`User-ID`,`Genre-ID`)
);

CREATE TABLE featuredBooks (
`ISBN10` VARCHAR(255) NOT NULL,
`author` VARCHAR(55) NOT NULL,
`title` VARCHAR(255) NOT NULL,
`description` LONGTEXT NOT NULL,
`categories` VARCHAR(255) NOT NULL,
`embeddable` BOOLEAN NOT NULL,
`id` VARCHAR(255),
`identifiers` VARCHAR(55),
`rating` int(55) NOT NULL,
`image` VARCHAR(255) NOT NULL,
`ratingsCount` int(255) NOT NULL,
PRIMARY KEY (`ISBN10`)
);
