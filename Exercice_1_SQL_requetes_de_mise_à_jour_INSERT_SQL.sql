USE collections_livres;

-- Exercice 5 SQL requêtes de structure SQL 
-- 1 Ajouter un attribut dans la table account :, account_img de type VARCHAR(255) NOT NULL avec la valeur par default "default.png"
ALTER TABLE `account`
ADD COLUMN account_img VARCHAR(255) DEFAULT "default.png" NOT NULL;

-- 2 Ajouter un attribut dans la table book : back_cover de type VARCHAR(255) NULL
ALTER TABLE book
ADD COLUMN back_cover VARCHAR(255);

-- 3 Ajouter un attribut dans la table commentary : note de type INT NOT NULL avec la valeur par default 0
ALTER TABLE commentary
ADD COLUMN note INT DEFAULT 0 NOT NULL;

-- 4 Editer un attribut dans la table book : passer l'attribut publication_date en DATETIME avec la valeur par default CURRENT_TIMESTAMP et NOT NULL
ALTER TABLE	book
MODIFY COLUMN publication_date DATETIME DEFAULT CURRENT_TIMESTAMP; -- je n'écrit pas NOT NULL pour ne pas effacer mes données
