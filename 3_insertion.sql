-- Script d'insertion des données pour la base pokemon_db
-- Ordre de remplissage : tables sans clés étrangères d'abord, puis celles avec dépendances.

USE pokemon_db;

-- ------------------------------------------------------------
-- 1. Table Attaque (18 lignes)
-- ------------------------------------------------------------
INSERT INTO Attaque (atk_nom, atk_puissance, atk_cout_energie, atk_description) VALUES
('Éclair', 40, 2, 'Lance un éclair sur l\'ennemi.'),
('Flamme', 50, 2, 'Brûle l\'ennemi avec des flammes intenses.'),
('Charge', 30, 1, 'Le Pokémon charge l\'ennemi.'),
('Tranch\'Herbe', 45, 2, 'Coupe l\'ennemi avec des feuilles tranchantes.'),
('Laser Glace', 90, 3, 'Un rayon de glace puissant. Peut geler.'),
('Draco-Souffle', 60, 2, 'Souffle un vent puissant chargé d\'énergie.'),
('Poing Éclair', 75, 3, 'Un coup de poing électrique.'),
('Lance-Soleil', 120, 4, 'Absorbe la lumière pour attaquer au tour suivant.'),
('Vibraqua', 60, 2, 'Projette de l\'eau à haute pression.'),
('Tranche', 70, 2, 'Lacère l\'ennemi avec des griffes acérées.'),
('Ball\'Ombre', 80, 3, 'Projette une ombre maléfique.'),
('Psyko', 90, 3, 'Attaque psychique puissante.'),
('Séisme', 100, 4, 'Provoque un tremblement de terre.'),
('Danse Flammes', 80, 3, 'Le Pokémon enveloppe l\'ennemi de flammes.'),
('Ouragan', 110, 4, 'Déchaîne un vent violent.'),
('Rafale Psy', 65, 2, 'Envoie une onde psychique.'),
('Direct Toxik', 50, 2, 'Attaque empoisonnée.'),
('Luminocanon', 80, 3, 'Projette un rayon lumineux puissant.');

-- ------------------------------------------------------------
-- 2. Table Paquet (18 lignes)
-- ------------------------------------------------------------
INSERT INTO Paquet (paquet_code_SKU, paquet_type, paquet_prix_reference, paquet_statut) VALUES
('SKU001', 'Booster', 4.99, 1),
('SKU002', 'Display', 89.90, 1),
('SKU003', 'Blister', 12.50, 1),
('PKM-ECLAT-01', 'Booster', 5.50, 1),
('PKM-GLACE-02', 'Booster', 5.50, 1),
('PKM-FEU-03', 'Booster', 5.50, 1),
('DISPLAY-A', 'Display', 95.00, 1),
('DISPLAY-B', 'Display', 99.99, 0),
('BLISTER-X', 'Blister', 14.90, 1),
('BLISTER-Y', 'Blister', 13.90, 1),
('COFFRET-Z', 'Coffret', 29.99, 1),
('COFFRET-LEG', 'Coffret', 49.99, 1),
('SKU014', 'Booster', 4.99, 1),
('SKU015', 'Booster', 4.99, 1),
('SKU016', 'Display', 88.50, 1),
('SKU017', 'Blister', 11.90, 1),
('SKU018', 'Coffret', 34.99, 1),
('SKU019', 'Booster', 5.99, 1);

-- ------------------------------------------------------------
-- 3. Table Extension (18 lignes)
-- ------------------------------------------------------------
INSERT INTO Extension (ext_nom, ext_date_sortie, ext_generation) VALUES
('Épée et Bouclier', '2020-02-07', 8),
('Écarlate et Violet', '2023-03-31', 9),
('Soleil et Lune', '2017-02-03', 7),
('XY', '2014-02-05', 6),
('Noir et Blanc', '2011-04-25', 5),
('Platine', '2009-02-11', 4),
('Diamant Perle', '2007-05-23', 4),
('Rubis Saphir', '2003-01-31', 3),
('Neo', '2001-01-16', 2),
('Jungle', '1999-06-16', 1),
('Fossile', '1999-10-10', 1),
('Team Rocket', '2000-04-24', 1),
('Gym Challenge', '2000-10-16', 1),
('Expedition', '2002-09-10', 2),
('Aquapolis', '2003-01-15', 2),
('Skyridge', '2003-05-12', 2),
('Legend Maker', '2006-02-15', 3),
('Mysterious Treasures', '2007-08-22', 4);

-- ------------------------------------------------------------
-- 4. Table Illustrateur (18 lignes)
-- ------------------------------------------------------------
INSERT INTO Illustrateur (ill_nom, ill_nationalite, ill_statut) VALUES
('Ken Sugimori', 'Japonaise', 1),
('Atsuko Nishida', 'Japonaise', 1),
('Mitsuhiro Arita', 'Japonaise', 1),
('Naoki Saito', 'Japonaise', 1),
('Yusuke Ohmura', 'Japonaise', 1),
('Satoshi Shirai', 'Japonaise', 1),
('Kouki Saitou', 'Japonaise', 1),
('TOKIYA', 'Japonaise', 1),
('Hitoshi Ariga', 'Japonaise', 1),
('Shin Nagasawa', 'Japonaise', 1),
('Ryuta Fuse', 'Japonaise', 1),
('Kawayoo', 'Japonaise', 1),
('Mizue', 'Japonaise', 1),
('Yoshinobu Saito', 'Japonaise', 1),
('Kyoko Umemoto', 'Japonaise', 1),
('Takao Unno', 'Japonaise', 1),
('Hideki Ishikawa', 'Japonaise', 1),
('Aya Kusube', 'Japonaise', 1);

-- ------------------------------------------------------------
-- 5. Table Lieu (18 lignes)
-- ------------------------------------------------------------
INSERT INTO Lieu (lieu_nom, lieu_type, lieu_pays, lieu_adresse, lieu_stocks_paquets, lieu_statut) VALUES
('Magasin Pokémon Centre', 'Magasin', 'France', '12 Rue du Pikachu, Paris', 150, 1),
('Entrepôt Nord', 'Entrepôt', 'France', 'Zone industrielle, Lille', 500, 1),
('Distributeur Europe', 'Distributeur', 'Belgique', 'Avenue des Cartes, Bruxelles', 300, 1),
('Boutique du Jouet', 'Magasin', 'France', '3 Place de la Bastille, Lyon', 80, 1),
('Entrepôt Sud', 'Entrepôt', 'Espagne', 'Polígono Industrial, Barcelone', 200, 1),
('Magasin OKA', 'Magasin', 'France', '45 Rue du Commerce, Toulouse', 60, 1),
('Distributeur Asie', 'Distributeur', 'Japon', '1-2-3 Shibuya, Tokyo', 1000, 1),
('Entrepôt Est', 'Entrepôt', 'Allemagne', 'Industriestrasse 5, Berlin', 400, 1),
('Boutique Fantastik', 'Magasin', 'Suisse', 'Rue du Marché 8, Genève', 30, 1),
('Magasin Manga', 'Magasin', 'France', '22 Rue des Manga, Strasbourg', 45, 1),
('Entrepôt Ouest', 'Entrepôt', 'Portugal', 'Rua da Industria 10, Lisbonne', 150, 1),
('Distributeur Amérique', 'Distributeur', 'USA', '123 Main Street, New York', 800, 1),
('Boutique Collector', 'Magasin', 'Canada', '456 Queen St, Toronto', 25, 1),
('Entrepôt Central', 'Entrepôt', 'France', 'Route de la Gare, Dijon', 350, 1),
('Magasin Pika Pika', 'Magasin', 'Belgique', 'Grand-Place 5, Bruxelles', 90, 1),
('Distributeur Océanie', 'Distributeur', 'Australie', '7 George Street, Sydney', 600, 1),
('Boutique du Centre', 'Magasin', 'France', '18 Rue Nationale, Tours', 40, 1),
('Entrepôt Logistics', 'Entrepôt', 'Pays-Bas', 'Havenweg 3, Rotterdam', 700, 1);

-- ------------------------------------------------------------
-- 6. Table Livraison (18 lignes)
-- ------------------------------------------------------------
INSERT INTO Livraison (livraison_numero_suivi, livraison_date_expedition, livraison_date_reception_prevue, livraison_statut) VALUES
('TRACK001', '2025-01-10', '2025-01-15', 'Livré'),
('TRACK002', '2025-01-12', '2025-01-18', 'En cours'),
('TRACK003', '2025-01-14', '2025-01-20', 'En cours'),
('TRACK004', '2025-01-05', '2025-01-10', 'Livré'),
('TRACK005', '2025-01-08', '2025-01-14', 'Livré'),
('TRACK006', '2025-01-15', '2025-01-22', 'Retard'),
('TRACK007', '2025-01-17', '2025-01-24', 'En cours'),
('TRACK008', '2025-01-20', '2025-01-27', 'Préparée'),
('TRACK009', '2025-01-22', '2025-01-29', 'Préparée'),
('TRACK010', '2025-01-03', '2025-01-09', 'Livré'),
('TRACK011', '2025-01-07', '2025-01-13', 'Livré'),
('TRACK012', '2025-01-11', '2025-01-17', 'En cours'),
('TRACK013', '2025-01-13', '2025-01-19', 'En cours'),
('TRACK014', '2025-01-16', '2025-01-23', 'Retard'),
('TRACK015', '2025-01-18', '2025-01-25', 'En cours'),
('TRACK016', '2025-01-21', '2025-01-28', 'Préparée'),
('TRACK017', '2025-01-24', '2025-01-31', 'Préparée'),
('TRACK018', '2025-01-02', '2025-01-08', 'Livré');

-- ------------------------------------------------------------
-- 7. Table Carte (18 lignes)
-- ------------------------------------------------------------
-- On insère 18 cartes avec des noms de Pokémon réels.
-- c_id_provient_de mis à NULL pour simplifier.
-- On choisit des paquets et extensions existants parmi ceux créés.
INSERT INTO Carte (c_pos_serie, c_type, c_nom, c_langue, c_rarete, c_PV, c_resistance, c_faiblesse, c_texte_effet, c_date_sortie, c_statut, c_id_provient_de, paquet_code_SKU, ext_id) VALUES
(1, 'Électrik', 'Pikachu', 'Français', 'Commune', 60, 'Acier', 'Combat', 'Éclair : lance un éclair.', '2023-01-15', 1, NULL, 'SKU001', 1),
(2, 'Feu', 'Dracaufeu', 'Français', 'Rare', 150, 'Plante', 'Eau', 'Lance-Flammes : puissante attaque de feu.', '2023-02-10', 1, NULL, 'PKM-ECLAT-01', 2),
(3, 'Eau', 'Tortank', 'Français', 'Rare', 140, 'Feu', 'Électrik', 'Hydrocanon : canon à eau dévastateur.', '2023-02-10', 1, NULL, 'PKM-GLACE-02', 2),
(4, 'Plante', 'Florizarre', 'Français', 'Rare', 130, 'Eau', 'Feu', 'Tranch\'Herbe : feuilles tranchantes.', '2023-02-10', 1, NULL, 'PKM-FEU-03', 2),
(5, 'Psy', 'Mewtwo', 'Anglais', 'Ultra rare', 170, 'Combat', 'Ténèbres', 'Psyko : attaque psychique.', '2022-05-20', 1, NULL, 'DISPLAY-A', 3),
(6, 'Dragon', 'Dracolosse', 'Français', 'Rare', 160, 'Feu', 'Glace', 'Draco-Souffle : souffle puissant.', '2021-11-11', 1, NULL, 'COFFRET-Z', 4),
(7, 'Ténèbres', 'Feunard', 'Français', 'Peu commune', 100, 'Psy', 'Eau', 'Danse Flammes : enveloppe de flammes.', '2020-08-25', 1, NULL, 'BLISTER-X', 5),
(8, 'Combat', 'Mackogneur', 'Français', 'Peu commune', 120, 'Roche', 'Psy', 'Poing Éclair : coup de poing électrique.', '2019-03-14', 1, NULL, 'SKU014', 6),
(9, 'Métal', 'Cizayox', 'Français', 'Rare', 110, 'Plante', 'Feu', 'Tranche : lacération.', '2021-07-09', 1, NULL, 'SKU015', 7),
(10, 'Fée', 'Mélodelfe', 'Anglais', 'Commune', 80, 'Ténèbres', 'Métal', 'Rafale Psy : onde psychique.', '2020-12-02', 1, NULL, 'SKU016', 8),
(11, 'Glace', 'Lokhlass', 'Français', 'Rare', 130, 'Eau', 'Électrik', 'Laser Glace : rayon gelant.', '2022-09-18', 1, NULL, 'SKU017', 9),
(12, 'Spectre', 'Ectoplasma', 'Français', 'Rare', 110, 'Normal', 'Ténèbres', 'Ball\'Ombre : ombre maléfique.', '2023-06-30', 1, NULL, 'SKU018', 10),
(13, 'Sol', 'Démolosse', 'Français', 'Peu commune', 90, 'Feu', 'Eau', 'Direct Toxik : empoisonnement.', '2021-04-05', 1, NULL, 'SKU019', 11),
(14, 'Vol', 'Roucarnage', 'Français', 'Commune', 80, 'Plante', 'Électrik', 'Ouragan : vent violent.', '2018-10-17', 1, NULL, 'PKM-ECLAT-01', 12),
(15, 'Roche', 'Grolem', 'Anglais', 'Peu commune', 110, 'Normal', 'Eau', 'Séisme : tremblement de terre.', '2017-02-22', 1, NULL, 'PKM-GLACE-02', 13),
(16, 'Insecte', 'Scarabrute', 'Français', 'Commune', 70, 'Plante', 'Feu', 'Tranch\'Herbe : coupe.', '2019-09-09', 1, NULL, 'BLISTER-Y', 14),
(17, 'Électrik', 'Raichu', 'Français', 'Rare', 90, 'Acier', 'Combat', 'Éclair : décharge électrique.', '2023-11-11', 1, NULL, 'COFFRET-LEG', 15),
(18, 'Psy', 'Alakazam', 'Français', 'Rare', 120, 'Combat', 'Ténèbres', 'Psyko : onde psychique.', '2022-01-27', 1, NULL, 'DISPLAY-B', 16);

-- ------------------------------------------------------------
-- 8. Table Possede (18 lignes)
-- ------------------------------------------------------------
INSERT INTO Possede (c_id, atk_id) VALUES
(1, 1), (1, 3),   -- Pikachu : Éclair, Charge
(2, 2), (2, 8),   -- Dracaufeu : Flamme, Lance-Soleil
(3, 9), (3, 3),   -- Tortank : Vibraqua, Charge
(4, 4), (4, 7),   -- Florizarre : Tranch'Herbe, Poing Éclair (non typé mais acceptable)
(5, 12), (5, 16), -- Mewtwo : Psyko, Rafale Psy
(6, 6), (6, 11),  -- Dracolosse : Draco-Souffle, Ball'Ombre
(7, 14), (7, 2),  -- Feunard : Danse Flammes, Flamme
(8, 7), (8, 10),  -- Mackogneur : Poing Éclair, Tranche
(9, 10), (9, 13), -- Cizayox : Tranche, Séisme (non typé)
(10, 16), (10, 3),-- Mélodelfe : Rafale Psy, Charge
(11, 5), (11, 9), -- Lokhlass : Laser Glace, Vibraqua
(12, 11), (12, 17),-- Ectoplasma : Ball'Ombre, Direct Toxik
(13, 17), (13, 3),-- Démolosse : Direct Toxik, Charge
(14, 15), (14, 6),-- Roucarnage : Ouragan, Draco-Souffle
(15, 13), (15, 7),-- Grolem : Séisme, Poing Éclair
(16, 4), (16, 10),-- Scarabrute : Tranch'Herbe, Tranche
(17, 1), (17, 18),-- Raichu : Éclair, Luminocanon
(18, 12), (18, 16);-- Alakazam : Psyko, Rafale Psy

-- ------------------------------------------------------------
-- 9. Table A_dessine (18 lignes)
-- ------------------------------------------------------------
INSERT INTO A_dessine (c_id, ill_ID) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9),
(10, 10), (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18);

-- ------------------------------------------------------------
-- 10. Table Distribue (18 lignes)
-- ------------------------------------------------------------
INSERT INTO Distribue (paquet_code_SKU, livraison_numero_suivi, lieu_ID) VALUES
('SKU001', 'TRACK001', 1),
('SKU002', 'TRACK002', 2),
('SKU003', 'TRACK003', 3),
('PKM-ECLAT-01', 'TRACK004', 4),
('PKM-GLACE-02', 'TRACK005', 5),
('PKM-FEU-03', 'TRACK006', 6),
('DISPLAY-A', 'TRACK007', 7),
('DISPLAY-B', 'TRACK008', 8),
('BLISTER-X', 'TRACK009', 9),
('BLISTER-Y', 'TRACK010', 10),
('COFFRET-Z', 'TRACK011', 11),
('COFFRET-LEG', 'TRACK012', 12),
('SKU014', 'TRACK013', 13),
('SKU015', 'TRACK014', 14),
('SKU016', 'TRACK015', 15),
('SKU017', 'TRACK016', 16),
('SKU018', 'TRACK017', 17),
('SKU019', 'TRACK018', 18);

-- Fin du script