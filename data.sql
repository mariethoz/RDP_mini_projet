-- salle
INSERT INTO salle (name) VALUES 
('Salle A'), ('Salle B'), ('Salle C'), ('Salle D'), ('Salle E'), 
('Salle F'), ('Salle G'), ('Salle H'), ('Salle I'), ('Salle J'), 
('Salle K'), ('Salle L'), ('Salle M'), ('Salle N'), ('Salle O'), 
('Salle P'), ('Salle Q'), ('Salle R'), ('Salle S'), ('Salle T');

-- table
INSERT INTO table_a_manger (id_salle, taille) VALUES 
(1, 4), (1, 6), (2, 4), (2, 6), (3, 4), 
(3, 6), (4, 4), (4, 6), (5, 4), (5, 6), 
(6, 4), (6, 6), (7, 4), (7, 6), (8, 4), 
(8, 6), (9, 4), (9, 6), (10, 4), (10, 6);

-- personnel
INSERT INTO personnel (nom, prenom, type) VALUES 
('Dupont', 'Jean', 1), ('Martin', 'Marie', 2), ('Durand', 'Paul', 1), 
('Petit', 'Lucie', 2), ('Moreau', 'Pierre', 1), ('Lefevre', 'Sophie', 2), 
('Roux', 'Julien', 1), ('Fournier', 'Claire', 2), ('Girard', 'Louis', 1), 
('Mercier', 'Emma', 2), ('Lambert', 'Hugo', 1), ('Bonnet', 'Alice', 2), 
('Francois', 'Lucas', 1), ('Martinez', 'Chloe', 2), ('Legrand', 'Maxime', 1), 
('Garnier', 'Sarah', 2), ('Faure', 'Nathan', 1), ('Renaud', 'Laura', 2), 
('Blanc', 'Leo', 1), ('Guerin', 'Camille', 2);

-- personnel_table
INSERT INTO personnel_table (id_personnel, id_table) VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), 
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10), 
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), 
(16, 16), (17, 17), (18, 18), (19, 19), (20, 20);

-- personnel_type
INSERT INTO personnel_type (type) VALUES 
('Serveur'), ('Chef'), ('Manager'), ('Barman'), ('Plongeur'), 
('Caissier'), ('Réceptionniste'), ('Sécurité'), ('Technicien'), ('Animateur'), 
('Commis'), ('Sommelier'), ('Pâtissier'), ('Cuisinier'), ('Livreur'), 
('Assistant'), ('Stagiaire'), ('Directeur'), ('Responsable'), ('Agent');

-- table_res
INSERT INTO table_res (id_table, id_reservation) VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), 
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10), 
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), 
(16, 16), (17, 17), (18, 18), (19, 19), (20, 20);

-- reservation
INSERT INTO reservation (id_client, res_date, nb_personne) VALUES 
(1, '2024-12-01', 4), (2, '2024-12-02', 6), (3, '2024-12-03', 4), 
(4, '2024-12-04', 6), (5, '2024-12-05', 4), (6, '2024-12-06', 6), 
(7, '2024-12-07', 4), (8, '2024-12-08', 6), (9, '2024-12-09', 4), 
(10, '2024-12-10', 6), (11, '2024-12-11', 4), (12, '2024-12-12', 6), 
(13, '2024-12-13', 4), (14, '2024-12-14', 6), (15, '2024-12-15', 4), 
(16, '2024-12-16', 6), (17, '2024-12-17', 4), (18, '2024-12-18', 6), 
(19, '2024-12-19', 4), (20, '2024-12-20', 6);

-- client
INSERT INTO client (nom, prenom) VALUES 
('Bernard', 'Alice'), ('Thomas', 'Lucas'), ('Robert', 'Emma'), 
('Richard', 'Hugo'), ('Petit', 'Chloe'), ('Durand', 'Leo'), 
('Leroy', 'Camille'), ('Moreau', 'Nathan'), ('Simon', 'Laura'), 
('Laurent', 'Maxime'), ('Lefevre', 'Sarah'), ('Michel', 'Louis'), 
('Garcia', 'Julien'), ('David', 'Claire'), ('Bertrand', 'Paul'), 
('Roux', 'Marie'), ('Vincent', 'Lucie'), ('Fournier', 'Pierre'), 
('Morel', 'Sophie'), ('Girard', 'Jean');

-- menu_carte
INSERT INTO menu_carte (nom, id_marge) VALUES 
('Menu Midi', 1), ('Menu Gourmand', 2), ('Menu de Noël', 3), 
('Menu Végétarien', 4), ('Menu Plaisir', 5), ('Menu Express', 6), 
('Menu Dégustation', 7), ('Menu Enfant', 8), ('Menu Tradition', 9), 
('Menu Découverte', 10), ('Menu Terroir', 11), ('Menu Saveurs', 12), 
('Menu Prestige', 13), ('Menu Festif', 14), ('Menu Gourmet', 15), 
('Menu Classique', 16), ('Menu Épicurien', 17), ('Menu Raffiné', 18), 
('Menu Convivial', 19), ('Menu Élégant', 20), 
('Salade César', 21), ('Soupe à l oignon', 22), ('Quiche Lorraine', 23), 
('Salade Niçoise', 24), ('Terrine de foie gras', 25), ('Boeuf Bourguignon', 26), 
('Coq au vin', 27), ('Ratatouille', 28), ('Poulet Basquaise', 29), 
('Cassoulet', 30), ('Tarte Tatin', 31), ('Crème brûlée', 32), 
('Mousse au chocolat', 33), ('Île flottante', 34), ('Profiteroles', 35);

-- prend_menu
INSERT INTO prend_menu (id_table, id_menu_carte) VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), 
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10), 
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), 
(16, 16), (17, 17), (18, 18), (19, 19), (20, 20);

-- creation_recette
INSERT INTO creation_recette (id_recette, id_ingredient, quantite, ordre) VALUES 
(1, 1, 100, 1), (1, 2, 50, 2), (1, 3, 30, 3), 
(2, 4, 200, 1), (2, 5, 100, 2), (2, 6, 50, 3), 
(3, 7, 150, 1), (3, 8, 100, 2), (3, 9, 50, 3), 
(4, 10, 100, 1), (4, 11, 50, 2), (4, 12, 30, 3), 
(5, 13, 200, 1), (5, 14, 100, 2), (5, 15, 50, 3), 
(6, 16, 150, 1), (6, 17, 100, 2), (6, 18, 50, 3), 
(7, 19, 100, 1), (7, 20, 50, 2), (7, 21, 30, 3), 
(8, 22, 200, 1), (8, 23, 100, 2), (8, 24, 50, 3), 
(9, 25, 150, 1), (9, 26, 100, 2), (9, 27, 50, 3), 
(10, 28, 100, 1), (10, 29, 50, 2), (10, 30, 30, 3), 
(11, 31, 200, 1), (11, 32, 100, 2), (11, 33, 50, 3), 
(12, 34, 150, 1), (12, 35, 100, 2), (12, 36, 50, 3), 
(13, 37, 100, 1), (13, 38, 50, 2), (13, 39, 30, 3), 
(14, 40, 200, 1), (14, 41, 100, 2), (14, 42, 50, 3), 
(15, 43, 150, 1), (15, 44, 100, 2), (15, 45, 50, 3), 
(16, 46, 100, 1), (16, 47, 50, 2), (16, 48, 30, 3), 
(17, 49, 200, 1), (17, 50, 100, 2), (17, 51, 50, 3), 
(18, 52, 150, 1), (18, 53, 100, 2), (18, 54, 50, 3), 
(19, 55, 100, 1), (19, 56, 50, 2), (19, 57, 30, 3), 
(20, 58, 200, 1), (20, 59, 100, 2), (20, 60, 50, 3);

-- ingredient
INSERT INTO ingredient (nom, prix_unitaire) VALUES 
('Laitue', 1.5), ('Parmesan', 2.0), ('Croutons', 1.0), 
('Boeuf', 10.0), ('Vin rouge', 5.0), ('Champignons', 3.0), 
('Pommes', 2.0), ('Sucre', 1.0), ('Beurre', 1.5), 
('Oignons', 1.0), ('Bouillon', 2.0), ('Fromage', 2.5), 
('Poulet', 8.0), ('Vin blanc', 5.0), ('Lardons', 3.0), 
('Crème', 2.0), ('Vanille', 3.0), ('Sucre roux', 1.5), 
('Pâte brisée', 2.0), ('Lardons', 3.0), ('Oeufs', 1.5), 
('Aubergines', 2.0), ('Courgettes', 2.0), ('Tomates', 1.5), 
('Chocolat', 3.0), ('Crème', 2.0), ('Sucre', 1.0), 
('Thon', 5.0), ('Haricots verts', 2.0), ('Olives', 1.5), 
('Poulet', 8.0), ('Poivrons', 2.0), ('Tomates', 1.5), 
('Oeufs', 1.5), ('Lait', 1.0), ('Sucre', 1.0), 
('Foie gras', 15.0), ('Gelée', 2.0), ('Pain d épices', 3.0), 
('Haricots blancs', 2.0), ('Saucisses', 4.0), ('Confit de canard', 10.0), 
('Choux', 1.5), ('Crème pâtissière', 2.0), ('Chocolat', 3.0), 
('Poisson', 10.0), ('Bouillon', 2.0), ('Crème', 2.0), 
('Canard', 12.0), ('Miel', 3.0), ('Épices', 2.0), 
('Citron', 1.0), ('Sucre', 1.0), ('Beurre', 1.5);

-- marge
INSERT INTO marge (valeur) VALUES 
(10.0), (15.0), (20.0), (25.0), (30.0), 
(35.0), (40.0), (45.0), (50.0), (55.0), 
(60.0), (65.0), (70.0), (75.0), (80.0), 
(85.0), (90.0), (95.0), (100.0), (105.0);

-- Menus complets (Entrée, Plat, Dessert)
INSERT INTO creation_menu_carte (id_recette, id_menu_carte) VALUES 
(1, 1), (2, 1), (3, 1),  -- Menu Midi: Salade César, Boeuf Bourguignon, Tarte Tatin
(4, 2), (5, 2), (6, 2),  -- Menu Gourmand: Soupe à l'oignon, Coq au vin, Crème brûlée
(7, 3), (8, 3), (9, 3),  -- Menu de Noël: Quiche Lorraine, Ratatouille, Mousse au chocolat
(10, 4), (11, 4), (12, 4),  -- Menu Végétarien: Salade Niçoise, Poulet Basquaise, Île flottante
(13, 5), (14, 5), (15, 5);  -- Menu Plaisir: Terrine de foie gras, Cassoulet, Profiteroles

-- Menus partiels (seulement Entrée)
INSERT INTO creation_menu_carte (id_recette, id_menu_carte) VALUES 
(1, 21),  -- Salade César
(4, 22),  -- Soupe à l'oignon
(7, 23),  -- Quiche Lorraine
(10, 24),  -- Salade Niçoise
(13, 25);  -- Terrine de foie gras

-- Menus partiels (seulement Plat)
INSERT INTO creation_menu_carte (id_recette, id_menu_carte) VALUES 
(2, 26),  -- Boeuf Bourguignon
(5, 27),  -- Coq au vin
(8, 28),  -- Ratatouille
(11, 29),  -- Poulet Basquaise
(14, 30);  -- Cassoulet

-- Menus partiels (seulement Dessert)
INSERT INTO creation_menu_carte (id_recette, id_menu_carte) VALUES 
(3, 31),  -- Tarte Tatin
(6, 32),  -- Crème brûlée
(9, 33),  -- Mousse au chocolat
(12, 34),  -- Île flottante
(15, 35);  -- Profiteroles

INSERT INTO recette (nom, type) VALUES 
('Salade César', 'Entrée'), 
('Boeuf Bourguignon', 'Plat'), 
('Tarte Tatin', 'Dessert'), 
('Soupe à l\'oignon', 'Entrée'), 
('Coq au vin', 'Plat'), 
('Crème brûlée', 'Dessert'), 
('Quiche Lorraine', 'Entrée'), 
('Ratatouille', 'Plat'), 
('Mousse au chocolat', 'Dessert'), 
('Salade Niçoise', 'Entrée'), 
('Poulet Basquaise', 'Plat'), 
('Île flottante', 'Dessert'), 
('Terrine de foie gras', 'Entrée'), 
('Cassoulet', 'Plat'), 
('Profiteroles', 'Dessert'), 
('Soupe de poisson', 'Entrée'), 
('Magret de canard', 'Plat'), 
('Tarte au citron', 'Dessert'), 
('Salade de chèvre chaud', 'Entrée'), 
('Blanquette de veau', 'Plat');
