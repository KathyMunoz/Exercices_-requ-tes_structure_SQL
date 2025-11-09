USE quizz;
-- Exercice BONUS (facultatif, pour les plus rapides). Exercice 4 SQL requêtes de mise à jour UPDATE BONUS SQL : Depuis la base de données du Quizz, nous avons besoin de remplir celle-ci avec des données de test.
-- NB : Utiliser des valeurs qui ressemblent à de vrais données (quizz, question, answer, category, users)

-- 1 Créer 4 users,,
INSERT INTO users (firstname, lastname, email, `password`, roles, avatar) VALUES
('Maeva', 'Munoz', 'klm@gmail.com', 'klm', 'user', 'photo'),
('Marco', 'Tocsek', 'nno@gmail.com', 'nno', 'userdeux', 'photodeux'),
('Evelyn', 'Tocse', 'ppq@gmail.com', 'oop', 'usertrois', 'phototrois'),
('Graciela', 'Perez', 'qrs@gmail.com', 'pqr', 'userquatre', 'photoquatre')
;

-- 2 Créer 6 categories,,
INSERT INTO category (title) VALUES
('quizz_maths'),
('science'),
('bio'),
('history'),
('logique'),
('numbers')
;

-- 3 Créer 3 quizz,,
INSERT INTO quizz (title, description, img) VALUES
('science', 'questions_science', 'photo_science'),
('biologie', 'test', 'photo_bio'),
('literatura', 'romans', 'photo_livre')
;

-- 4 Associer 2 categories à chaque quizz,,
INSERT INTO quizz_category (category_id, quizz_id) VALUES
(1, 1),
(20, 1),
(21, 2),
(22, 2),
(23, 3),
(24, 3)
;

-- 5 Créer 15 questions,,
INSERT INTO question (title, description, img, multiple) VALUES 
('Quelle est la commande pour insérer des données dans une table ?', 'Choisis la bonne commande SQL.', 'photo', 1),
('Quelle clause permet de filtrer les résultats d’une requête ?', 'Indique la clause utilisée pour filtrer.', 'photo', 2),
('Quelle commande permet de créer une nouvelle base de données ?', 'Choisis la commande SQL correcte.', 'photo', 3),
('Quelle commande supprime une table ?', 'Attention : cette action est irréversible.', 'photo', 4),
('Quelle commande permet de modifier la structure d’une table ?', 'Par exemple, ajouter une colonne.', 'photo', 5),
('Quel mot-clé est utilisé pour trier les résultats ?', 'Trie les résultats d’une requête SQL.', 'photo', 6),
('Quelle clause est utilisée pour regrouper les résultats ?', 'Elle est souvent utilisée avec des fonctions d’agrégation.', 'photo', 7),
('Quelle fonction retourne le nombre total de lignes ?', 'Fonction d’agrégation pour compter les lignes.', 'photo', 8),
('Quelle commande permet d’ajouter une nouvelle colonne ?', 'Ajoute une colonne à une table existante.', 'photo', 9),
('Quel type de clé assure l’unicité d’une ligne ?', 'Indique le nom du type de clé.', 'photo', 10),
('Quelle commande permet de supprimer toutes les données d’une table sans la supprimer ?', 'Attention à la différence avec DROP.', 'photo', 11),
('Quelle clause est utilisée pour joindre deux tables ?', 'Permet de combiner les lignes de deux tables.', 'photo', 12),
('Quelle commande permet de mettre à jour des données existantes ?', 'Utilisée pour modifier des enregistrements.', 'photo', 13),
('Quelle clause est utilisée pour limiter le nombre de résultats ?', 'Spécifie le nombre maximal de lignes retournées.', 'photo', 14),
('Quel est le rôle de la clause HAVING ?', 'Utilisée pour filtrer après un regroupement.', 'photo', 15)
;

-- 6 Créer et associer 4 answers à chaque question(quesion_id ->answer)
INSERT INTO answer (`text`, valid, answer_point, question_id) VALUES
-- Question 1
('INSERT INTO table_name VALUES (...)', 1, 1, 1),
('ADD INTO table_name VALUES (...)', 0, 0, 1),
('PUT INTO table_name VALUES (...)', 0, 0, 1),
('APPEND INTO table_name VALUES (...)', 0, 0, 1),

-- Question 2
('WHERE', 1, 1, 2),
('FILTER', 0, 0, 2),
('IF', 0, 0, 2),
('SELECT', 0, 0, 2),

-- Question 3
('CREATE DATABASE nom_base;', 1, 1, 3),
('NEW DATABASE nom_base;', 0, 0, 3),
('MAKE DATABASE nom_base;', 0, 0, 3),
('INIT DATABASE nom_base;', 0, 0, 3),

-- Question 4
('DROP TABLE nom_table;', 1, 1, 4),
('DELETE TABLE nom_table;', 0, 0, 4),
('REMOVE TABLE nom_table;', 0, 0, 4),
('ERASE TABLE nom_table;', 0, 0, 4),

-- Question 5
('ALTER TABLE nom_table;', 1, 1, 5),
('CHANGE TABLE nom_table;', 0, 0, 5),
('EDIT TABLE nom_table;', 0, 0, 5),
('UPDATE TABLE nom_table;', 0, 0, 5),

-- Question 6
('ORDER BY', 1, 1, 6),
('SORT BY', 0, 0, 6),
('ARRANGE BY', 0, 0, 6),
('GROUP BY', 0, 0, 6),

-- Question 7
('GROUP BY', 1, 1, 7),
('ORDER BY', 0, 0, 7),
('UNION', 0, 0, 7),
('JOIN', 0, 0, 7),

-- Question 8
('COUNT()', 1, 1, 8),
('SUM()', 0, 0, 8),
('AVG()', 0, 0, 8),
('TOTAL()', 0, 0, 8),

-- Question 9
('ALTER TABLE nom_table ADD colonne TYPE;', 1, 1, 9),
('INSERT COLUMN nom_table;', 0, 0, 9),
('UPDATE TABLE ADD COLUMN;', 0, 0, 9),
('CREATE COLUMN nom_table;', 0, 0, 9),

-- Question 10
('PRIMARY KEY', 1, 1, 10),
('FOREIGN KEY', 0, 0, 10),
('UNIQUE INDEX', 0, 0, 10),
('MAIN KEY', 0, 0, 10),

-- Question 11
('TRUNCATE TABLE nom_table;', 1, 1, 11),
('DELETE * FROM nom_table;', 0, 0, 11),
('DROP TABLE nom_table;', 0, 0, 11),
('CLEAR TABLE nom_table;', 0, 0, 11),

-- Question 12
('JOIN', 1, 1, 12),
('MERGE', 0, 0, 12),
('CONNECT', 0, 0, 12),
('LINK', 0, 0, 12),

-- Question 13
('UPDATE nom_table SET colonne = valeur;', 1, 1, 13),
('MODIFY nom_table SET colonne = valeur;', 0, 0, 13),
('CHANGE nom_table SET colonne = valeur;', 0, 0, 13),
('ALTER nom_table SET colonne = valeur;', 0, 0, 13),

-- Question 14
('LIMIT', 1, 1, 14),
('MAX', 0, 0, 14),
('RANGE', 0, 0, 14),
('OFFSET', 0, 0, 14),

-- Question 15
('HAVING est utilisée pour filtrer après GROUP BY', 1, 1, 15),
('HAVING est utilisée avant WHERE', 0, 0, 15),
('HAVING remplace la clause ORDER BY', 0, 0, 15),
('HAVING est utilisée pour limiter le nombre de résultats', 0, 0, 15);


-- 7 Associer à chaque quizz 5 questions(quizz_question).,
INSERT INTO quizz_question (question_id, quizz_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3)
;

