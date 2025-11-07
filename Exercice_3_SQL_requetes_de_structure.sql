-- Création de la base données
CREATE DATABASE IF NOT EXISTS quizz CHARSET utf8mb4;
USE quizz;

-- Création des tables
CREATE TABLE IF NOT EXISTS played(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
sucessfull BOOLEAN DEFAULT 0 NOT NULL,
create_at DATETIME NOT NULL,
users_id INT NOT NULL,
quizz_id INT NOT NULL,
question_id INT NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS users(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
firstname VARCHAR(50) NOT NULL,
lastname VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
`password` VARCHAR(100) NOT NULL,
roles VARCHAR(255) NOT NULL,
avatar VARCHAR(255) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS quizz(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
title VARCHAR(255) NOT NULL,
description TEXT NOT NULL,
img VARCHAR(255) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS answer(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
`text` VARCHAR(100) NOT NULL,
valid BOOLEAN DEFAULT 0 NOT NULL,
answer_point INT NOT NULL,
question_id INT NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS question(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
title VARCHAR(255) NOT NULL,
description VARCHAR(255) NOT NULL,
img VARCHAR(255) NOT NULL,
multiple INT NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS category(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
title VARCHAR(50) UNIQUE NOT NULL
)ENGINE=InnoDB;

-- Création TABLES association

CREATE TABLE IF NOT EXISTS quizz_question(
question_id INT,
quizz_id INT,
PRIMARY KEY(question_id, quizz_id)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS played_answer(
answer_id INT,
played_id INT,
PRIMARY KEY(answer_id, played_id)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS quizz_category(
category_id INT,
quizz_id INT,
PRIMARY KEY(category_id, quizz_id)
)ENGINE=InnoDB;

-- Ajout des contraintes de clé etrangères
ALTER TABLE played
ADD CONSTRAINT fk_to_assigned_quizz
FOREIGN KEY(quizz_id)
REFERENCES quizz(id)
ON DELETE CASCADE;

ALTER TABLE played
ADD CONSTRAINT fk_to_attached_users
FOREIGN KEY(users_id)
REFERENCES users(id)
ON DELETE CASCADE;

ALTER TABLE played
ADD CONSTRAINT fk_to_played_question
FOREIGN KEY(question_id)
REFERENCES question(id)
ON DELETE CASCADE;

ALTER TABLE answer
ADD CONSTRAINT fk_to_add_question
FOREIGN KEY(question_id)
REFERENCES question(id)
ON DELETE CASCADE;

ALTER TABLE quizz_category
ADD CONSTRAINT fk_to_qualify_quizz
FOREIGN KEY(quizz_id)
REFERENCES quizz(id);

ALTER TABLE quizz_category
ADD CONSTRAINT 	fk_to_qualify_category
FOREIGN KEY(category_id)
REFERENCES category(id);

ALTER TABLE played_answer
ADD CONSTRAINT fk_to_answer_answer
FOREIGN KEY(answer_id)
REFERENCES answer(id);

ALTER TABLE played_answer
ADD CONSTRAINT fk_to_answer_played
FOREIGN KEY(played_id)
REFERENCES played(id);

ALTER TABLE quizz_question
ADD CONSTRAINT fk_to_contain_quizz
FOREIGN KEY(quizz_id)
REFERENCES quizz(id);

ALTER TABLE quizz_question
ADD CONSTRAINT fk_to_contain_question
FOREIGN KEY(question_id)
REFERENCES question(id);









