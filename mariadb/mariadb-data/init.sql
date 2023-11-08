CREATE DATABASE IF NOT EXISTS webshop;

USE webshop;

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `items` WRITE;
INSERT INTO `items` (`id`, `name`, `description`, `price`, `image`)
VALUES
	(1,'Hemd','Ein gelbes Hemd in freiher Wahl', 123, 'hemd.jpg'),
	(2,'Hose','Diese Hose wird jedem gefallen, wer Jeans mag', 232, 'hose.jpg'),
	(3,'Hut', 'Mein Hut der hat 4 Ecken...', 444, 'hut.jpg');
UNLOCK TABLES;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
INSERT INTO `users` (`id`, `name`, `password`)
VALUES
	(1,'Admin','b714337aa8007c433329ef43c7b8252c'),
	(2,'Admin2','2d9cab8c2ce445c63ec289b7fc62bba6');
UNLOCK TABLES;