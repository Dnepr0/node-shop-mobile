#DROP DATABASE IF EXISTS elis_db ;
#CREATE DATABASE elis_db;
USE elis_db;

DROP TABLE IF EXISTS admin;
DROP TABLE IF EXISTS tag;
DROP TABLE IF EXISTS image;
DROP TABLE IF EXISTS post;

CREATE TABLE post (
	   post_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	   title VARCHAR(50) NOT NULL DEFAULT 'Untitled',
	   htmlText TEXT,
	   likes INT UNSIGNED NOT NULL DEFAULT 0
) ENGINE=INNODB;

CREATE TABLE image (
	   url TEXT NOT NULL,
	   post_id INT UNSIGNED NOT NULL,
	   FOREIGN KEY (post_id)
	   		   REFERENCES post(post_id)
) ENGINE=INNODB;

CREATE TABLE tag (
	   name VARCHAR(30) NOT NULL,
	   post_id INT UNSIGNED NOT NULL,
	   FOREIGN KEY (post_id)
	   		   REFERENCES post(post_id)
) ENGINE=INNODB;

CREATE TABLE admin (
	   amin_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	   login VARCHAR(50) NOT NULL,
	   pass_hash TEXT
) ENGINE=INNODB;
