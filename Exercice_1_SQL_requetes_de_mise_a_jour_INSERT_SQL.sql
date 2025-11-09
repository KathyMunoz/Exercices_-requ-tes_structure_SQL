USE collections_livres;
-- Exercice 1 SQL requêtes de mise à jour INSERT SQL
-- 1 Créer 5 categories de book,
INSERT INTO category (category_name) VALUES ('horror'), ('romantique'), ('comedie'), ('suspense'), ('policier'); -- Je donne 5 valeurs possible pour ma colonne category_name

-- 2 Créer 3 accounts,
INSERT INTO `account` (firstname, lastname, email, `password`, created_at, `status`, account_img) VALUES -- INSERT TO + nom_table + nom_colonne + VALUES + valeurs de colonnes
('Stefania', 'Moran', 'abcd@gmail.com', 'abcd', '2025-02-02', 0, 'image_avatar'),
('Gabriela', 'Garcia', 'efg@gmail.com', 'efgh', '2025-03-03', 1, 'image_chat'),
('Jeremy', 'Martin','hijk@gmail.com', 'hijk', '2025-04-04', 0, 'image_moto')
;
-- 3 Créer 5 authors,
INSERT INTO author (firstname, lastname, pseudo) VALUES 
('Pedro', 'Villamar', 'Chavo'),
('Sonia', 'Vera', 'Chonguito'),
('Geremia', 'Gorotiza', 'Gere'),
('Octavio', 'Euclides','Don_Moran'),
('Isabelle', 'Martin', 'Isa')
;

-- 3 Créer 15 books (les books sont associés à des authors)
INSERT INTO book (title, description, publication_date, cover, id_author, back_cover) VALUES
('La_casa_de_reves', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 1, 'resume_livre'),
('La_casa_de_reves_Volume_2', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 1, 'resume_livre'),
('La_casa_de_reves_vol_3', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 1, 'resume_livre'),
('La_casa_de_reves_vol_4', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 1, 'resume_livre'),
('La_casa_de_reves_vol_5', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 2, 'resume_livre'),
('La_casa_de_reves_vol_6', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 2, 'resume_livre'),
('La_casa_de_reves_vol_7', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 3, 'resume_livre'),
('La_casa_de_reves_vol_8', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 3, 'resume_livre'),
('La_casa_de_reves_vol_9', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 4, 'resume_livre'),
('La_casa_de_reves_vol_10', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 4, 'resume_livre'),
('La_casa_de_reves_vol_11', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 5, 'resume_livre'),
('La_casa_de_reves_vol_12', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 5, 'resume_livre'),
('La_casa_de_reves_vol_13', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 5, 'resume_livre'),
('La_casa_de_reves_vol_14', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 1, 'resume_livre'),
('La_casa_de_reves_vol_15', 'histoire_d_une_maison', '2025-05-05', 'image_maison', 1, 'resume_livre');

-- 4 Associer les 15 books à des categories(existantes)
INSERT INTO book_category (id_book, id_category) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 1),
(6, 1),
(7, 2),
(8, 2),
(9, 4),
(10, 4),
(11, 5),
(12, 5),
(13, 3),
(14, 4),
(15, 5)
;

-- 5 Associer 3 books à chaques account (book_account)

INSERT INTO book_account (id_book, id_account) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(8, 3),
(9, 3)
;
-- 6 Ajouter 2 commentaries (liés aux books) pour chaque account
INSERT INTO commentary (content, created_at, enabled, id_account, id_book, note) VALUES
('j_aime_ce_livre', '2525-05-02', 0, 1, 1, 5),
('je_n_aime_pas_ce_livre', '2025-06-04', 1, 1, 2, 6),
('j_aime_les_personnages', '2525-01-01', 0, 2, 4, 3),
('j_n_aime_pas_les_personnages', '2525-01-01', 0, 2, 5, 3),
('j_aime_l_histoire', '2025-05-09', 1, 3, 15, 8),
('bof', '2025-06-06', 1, 3, 14, 1)
;