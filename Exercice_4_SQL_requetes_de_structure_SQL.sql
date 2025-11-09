-- Création de la base données
CREATE DATABASE IF NOT EXISTS collections_livres CHARSET utf8mb4;
USE collections_livres;

-- Création des tables 
CREATE TABLE IF NOT EXISTS author(
id_author INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
firstname VARCHAR(50) NOT NULL,
lastname VARCHAR(50) NOT NULL,
pseudo VARCHAR(50) UNIQUE NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS book(
id_book INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
title VARCHAR(50) NOT NULL,
description VARCHAR(255) NOT NULL,
publication_date DATE NOT NULL,
cover VARCHAR(255) NOT NULL,
id_author INT NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS category(
id_category INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
category_name VARCHAR(50) UNIQUE NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS commentary(
id_commentary INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
content VARCHAR(255) NOT NULL,
created_at DATE NOT NULL,
enabled BOOLEAN DEFAULT 0 NOT NULL,
id_account INT NOT NULL,
id_book INT NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `account`(
id_account INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
firstname VARCHAR(50) NOT NULL,
lastname VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
`password` VARCHAR(50) NOT NULL,
created_at DATE NOT NULL,
`status` BOOLEAN DEFAULT 0 NOT NULL
)ENGINE=InnoDB;

-- Création TABLES association

CREATE TABLE IF NOT EXISTS book_account(
id_book INT,
id_account INT,
PRIMARY KEY(id_book, id_account)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS book_category(
id_book INT,
id_category INT,
PRIMARY KEY(id_book, id_category)
)ENGINE=InnoDB;

-- Ajout des contraintes de clé etrangères

ALTER TABLE book
ADD CONSTRAINT fk_write_author
FOREIGN KEY(id_author)
REFERENCES author(id_author)
ON DELETE CASCADE;

ALTER TABLE commentary
ADD CONSTRAINT fk_add_book
FOREIGN KEY(id_book)
REFERENCES book(id_book)
ON DELETE CASCADE;

ALTER TABLE commentary
ADD CONSTRAINT fk_post_account
FOREIGN KEY(id_account)
REFERENCES `account`(id_account)
ON DELETE CASCADE;

ALTER TABLE book_category
ADD CONSTRAINT fk_detailed_category
FOREIGN KEY(id_category)
REFERENCES category(id_category);

ALTER TABLE book_category
ADD CONSTRAINT fk_detailed_book
FOREIGN KEY(id_book)
REFERENCES book(id_book);

ALTER TABLE book_account
ADD CONSTRAINT fk_possess_book
FOREIGN KEY(id_book)
REFERENCES book(id_book);

ALTER TABLE book_account
ADD CONSTRAINT fk_possess_account
FOREIGN KEY(id_account)
REFERENCES `account`(id_account);










