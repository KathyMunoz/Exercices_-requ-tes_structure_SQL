USE collections_livres;
-- Exercice 2 SQL requêtes de mise à jour UPDATE SQL : Depuis la base de données des livres, nous avons besoin de mettre à jour des enregistrements :
-- 1 Passer le status de tous les accouts à true
UPDATE `account` SET `status` = 1 WHERE `status` <> 1; -- <> different de

-- 2 Modifier le password de tous les accounts -> hash en md5
UPDATE `account` SET `password` = md5(`password`);

-- 3 Modifier le pseudo de tous les authors -> il sera composé de la 1 lettre du firstname suivi du lastname:, ex : Victor Hugo -> vhugo,
UPDATE author SET pseudo = concat(left(firstname,1), lastname);

-- 4 Modifier la date de création de tous les accounts (created_at) ajouter un an à la date :, ex : 2020-10-01 -> 2021-10-01
UPDATE `account` SET created_at = DATE_ADD(created_at, INTERVAL 1 YEAR);

-- 5 Modifier la cover de tous les books dont le title commence par des lettres comprises entre a et m,, la nouvelle cover sera -> update_cover
UPDATE `book` SET cover = 'update_cover' WHERE title REGEXP '^[A-Ma-m]'; -- ^ ça veut dire debut / A-M en mayuscule a-m minuscule

-- 6 Modifier le lastname des authors -> passer le lastname en Majuscule.
UPDATE author SET lastname = UPPER(lastname);
