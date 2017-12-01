create database mvc;

use mvc;

CREATE TABLE `pages` (
    `id` TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
    `alias` VARCHAR(100) NOT NULL,
    `title` VARCHAR(100) NOT NULL,
    `content` TEXT DEFAULT NULL,
    `is_published` TINYINT(1) UNSIGNED DEFAULT 0,
    PRIMARY KEY (`id`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

INSERT INTO `pages`
VALUES (1, 'about', 'About Us', 'Test content', 1),
	   (2, 'test', 'Test page', 'Another test content', 1);
       
CREATE TABLE `messages` (
    `id` TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `message` TEXT DEFAULT NULL,
    PRIMARY KEY (`id`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

CREATE TABLE `users` (
    `id` SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    `login` VARCHAR(45) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `role` VARCHAR(45) NOT NULL DEFAULT 'admin',
    `password` CHAR(32) NOT NULL,
    `is_active` TINYINT(1) UNSIGNED DEFAULT '1',
    PRIMARY KEY (`id`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;       