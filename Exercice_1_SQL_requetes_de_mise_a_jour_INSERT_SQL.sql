USE collections_livres;
-- Exercice 1 SQL requêtes de mise à jour INSERT SQL
-- 1 Créer 5 categories de book,
INSERT INTO category (category_name) VALUES ('horror'), ('romantique'), ('comedie'), ('suspense'), ('policier'); -- Je donne 5 valeurs possible pour ma colonne category_name

-- 2 Créer 3 accounts,
INSERT INTO `account`  
-- 3 Créer 5 authors,
-- 3 Créer 15 books (les books sont associés à des authors),
-- 4 Associer les 15 books à des categories(existantes),
-- 5 Associer 3 books à chaques account (book_account),
-- 6 Ajouter 2 commentaries (liés aux books) pour chaque account.