-- Remplissage de la base de données pokemon_db
-- Ordre : tables sans clés étrangères d'abord, puis avec clés étrangères

USE pokemon_db;

-- 1. TABLE Attaque (18 lignes)
INSERT INTO Attaque (atk_id, atk_nom, atk_puissance, atk_cout_energie, atk_description) VALUES
(1, 'Flamme', 40, 1, 'Lance une flamme intense.'),
(2, 'Charge', 40, 1, 'Charge l’ennemi avec une ruée.'),
(3, 'Lance-Soleil', 120, 3, 'Absorbe la lumière du soleil et la libère.'),
(4, 'Pistolet à O', 40, 1, 'Tire de l’eau pressurisée.'),
(5, 'Éclair', 40, 1, 'Décharge une puissante étincelle.'),
(6, 'Tranch’Herbe', 45, 1, 'Tranche l’ennemi avec des lames de feuilles.'),
(7, 'Psyko', 90, 2, 'Attaque avec des pouvoirs psychiques.'),
(8, 'Morsure', 60, 1, 'Mord l’ennemi avec des crocs acérés.'),
(9, 'Lance-Flammes', 90, 2, 'Projette un torrent de flammes.'),
(10, 'Hydrocanon', 110, 3, 'Canon à eau dévastateur.'),
(11, 'Tonnerre', 90, 2, 'Frappe l’ennemi avec un éclair géant.'),
(12, 'Fouet Lianes', 35, 1, 'Fouette avec des lianes.'),
(13, 'Piqué', 60, 2, 'Plonge sur l’ennemi depuis les airs.'),
(14, 'Vive-Attaque', 40, 1, 'Attaque rapide avant que l’ennemi ne réagisse.'),
(15, 'Abîme', 0, 2, 'Met K.O. l’ennemi en un coup (peut échouer).'),
(16, 'Lame de Roc', 50, 1, 'Lance des rochers tranchants.'),
(17, 'Ball’Ombre', 80, 2, 'Projette une boule d’ombre.'),
(18, 'Draco-Griffe', 80, 2, 'Griffe le dragon.');

-- 2. TABLE Paquet (18 lignes)
INSERT INTO Paquet (paquet_code_SKU, paquet_type, paquet_prix_reference, paquet_statut) VALUES
('PKM-BST-001', 'Booster', 3.99, 1),
('PKM-BST-002', 'Booster', 3.99, 1),
('PKM-BST-003', 'Booster', 4.50, 1),
('PKM-ETB-001', 'Étui de collection', 39.99, 1),
('PKM-ETB-002', 'Étui de collection', 44.99, 0),
('PKM-BOX-001', 'Boîte de boosters', 24.99, 1),
('PKM-BOX-002', 'Boîte de boosters', 29.99, 1),
('PKM-DECK-001', 'Deck pré-construit', 12.99, 1),
('PKM-DECK-002', 'Deck pré-construit', 14.99, 1),
('PKM-TIN-001', 'Boîte métal', 19.99, 1),
('PKM-TIN-002', 'Boîte métal', 19.99, 0),
('PKM-BST-004', 'Booster', 3.99, 1),
('PKM-BST-005', 'Booster', 4.99, 1),
('PKM-ETB-003', 'Étui de collection', 49.99, 1),
('PKM-BOX-003', 'Boîte de boosters', 34.99, 1),
('PKM-DECK-003', 'Deck pré-construit', 15.99, 1),
('PKM-TIN-003', 'Boîte métal', 21.99, 1),
('PKM-BST-006', 'Booster', 3.99, 1);

-- 3. TABLE Extension (18 lignes)
INSERT INTO Extension (ext_id, ext_nom, ext_date_sortie, ext_generation) VALUES
(1, 'Épée et Bouclier', '2020-02-07', 8),
(2, 'Épée et Bouclien : Ténèbres Embrasées', '2020-08-14', 8),
(3, 'Épée et Bouclier : Voltage Éclatant', '2020-11-13', 8),
(4, 'Écarlate et Violet', '2023-03-31', 9),
(5, 'Écarlate et Violet : Flammes Obsidiennes', '2023-08-11', 9),
(6, 'Écarlate et Violet : Mascarade Crépusculaire', '2024-05-24', 9),
(7, 'Soleil et Lune', '2017-02-03', 7),
(8, 'Soleil et Lune : Ultima-Puissance', '2018-02-02', 7),
(9, 'XY', '2014-02-05', 6),
(10, 'XY : Impulsion Turbo', '2014-11-05', 6),
(11, 'Noir et Blanc', '2011-04-25', 5),
(12, 'Noir et Blanc : Forces Célestes', '2012-02-08', 5),
(13, 'Platine', '2009-02-11', 4),
(14, 'Diamant & Perle', '2007-05-23', 4),
(15, 'EX Rubis & Saphir', '2003-07-18', 3),
(16, 'EX Team Aqua vs Team Magma', '2004-03-15', 3),
(17, 'Neo', '2000-12-16', 2),
(18, 'Jungle', '1999-06-16', 1);

-- 4. TABLE Livraison (18 lignes)
INSERT INTO Livraison (livraison_numero_suivi, livraison_date_expedition, livraison_date_reception_prevue, livraison_statut) VALUES
('TRK123456789FR', '2025-01-10', '2025-01-15', 'Expédiée'),
('TRK987654321FR', '2025-01-12', '2025-01-18', 'En préparation'),
('TRK456789123FR', '2025-01-05', '2025-01-10', 'Livrée'),
('TRK321654987FR', '2025-01-08', '2025-01-12', 'Expédiée'),
('TRK789123456FR', '2025-01-15', '2025-01-20', 'En préparation'),
('TRK147258369FR', '2025-01-03', '2025-01-09', 'Livrée'),
('TRK258369147FR', '2025-01-07', '2025-01-14', 'Expédiée'),
('TRK369147258FR', '2025-01-11', '2025-01-17', 'En préparation'),
('TRK159753486FR', '2025-01-02', '2025-01-08', 'Livrée'),
('TRK753486159FR', '2025-01-14', '2025-01-21', 'Expédiée'),
('TRK486159753FR', '2025-01-09', '2025-01-16', 'En préparation'),
('TRK951753852FR', '2025-01-13', '2025-01-19', 'Expédiée'),
('TRK852741963FR', '2025-01-06', '2025-01-13', 'Livrée'),
('TRK741963852FR', '2025-01-04', '2025-01-11', 'Livrée'),
('TRK963852741FR', '2025-01-16', '2025-01-23', 'En préparation'),
('TRK321123654FR', '2025-01-17', '2025-01-24', 'Expédiée'),
('TRK654789321FR', '2025-01-18', '2025-01-25', 'En préparation'),
('TRK789321654FR', '2025-01-19', '2025-01-26', 'Expédiée');

-- 5. TABLE Illustrateur (18 lignes)
INSERT INTO Illustrateur (ill_ID, ill_nom, ill_nationalite, ill_statut) VALUES
(1, 'Ken Sugimori', 'Japonaise', 1),
(2, 'Atsuko Nishida', 'Japonaise', 1),
(3, 'Mitsuhiro Arita', 'Japonaise', 1),
(4, 'Naoki Saito', 'Japonaise', 1),
(5, 'Sowsow', 'Japonaise', 1),
(6, 'Sanosuke Sakuma', 'Japonaise', 1),
(7, 'Kagemaru Himeno', 'Japonaise', 1),
(8, 'Yoshinobu Saito', 'Japonaise', 1),
(9, 'Ryuta Fuse', 'Japonaise', 1),
(10, 'Shin Nagasawa', 'Japonaise', 1),
(11, 'Tomokazu Komiya', 'Japonaise', 1),
(12, 'Hasuno', 'Japonaise', 1),
(13, 'Hitoshi Ariga', 'Japonaise', 1),
(14, 'Kouki Saitou', 'Japonaise', 1),
(15, 'Sui', 'Japonaise', 1),
(16, 'Teeziro', 'Japonaise', 1),
(17, 'Mina Nakai', 'Japonaise', 1),
(18, 'Yuu Nishida', 'Japonaise', 0);

-- 6. TABLE Lieu (18 lignes)
INSERT INTO Lieu (lieu_ID, lieu_nom, lieu_type, lieu_pays, lieu_adresse, lieu_stocks_paquets, lieu_statut) VALUES
(1, 'Entrepôt Central Lyon', 'Entrepôt', 'France', '15 Rue de la Logistique, 69000 Lyon', 5000, 1),
(2, 'Usine de Production Lille', 'Usine', 'France', 'Zone Industrielle Nord, 59000 Lille', 0, 1),
(3, 'Magasin de jeux Paris', 'Magasin', 'France', '25 Rue du Temple, 75003 Paris', 350, 1),
(4, 'Entrepôt Bordeaux', 'Entrepôt', 'France', '8 Avenue des Entreprises, 33000 Bordeaux', 3200, 1),
(5, 'Magasin Marseille', 'Magasin', 'France', '12 Rue Saint-Ferréol, 13001 Marseille', 150, 1),
(6, 'Usine de Production Nantes', 'Usine', 'France', 'Parc d’Activités, 44000 Nantes', 200, 1),
(7, 'Entrepôt Toulouse', 'Entrepôt', 'France', '3 Impasse du Stock, 31000 Toulouse', 4100, 1),
(8, 'Magasin Strasbourg', 'Magasin', 'France', '5 Rue des Francs-Bourgeois, 67000 Strasbourg', 80, 1),
(9, 'Usine de Production Rennes', 'Usine', 'France', 'Rue de la Manufacture, 35000 Rennes', 1500, 0),
(10, 'Entrepôt Nice', 'Entrepôt', 'France', '20 Route du Futur, 06000 Nice', 2200, 1),
(11, 'Magasin Montpellier', 'Magasin', 'France', '7 Rue de la Loge, 34000 Montpellier', 95, 1),
(12, 'Usine de Production Grenoble', 'Usine', 'France', '25 Rue de l’Industrie, 38000 Grenoble', 800, 1),
(13, 'Entrepôt Dijon', 'Entrepôt', 'France', '18 Rue du Commerce, 21000 Dijon', 2800, 1),
(14, 'Magasin Rouen', 'Magasin', 'France', '9 Rue du Gros-Horloge, 76000 Rouen', 60, 1),
(15, 'Usine de Production Tours', 'Usine', 'France', '42 Rue des Ateliers, 37000 Tours', 450, 1),
(16, 'Entrepôt Clermont-Ferrand', 'Entrepôt', 'France', '2 Rue du Puy-de-Dôme, 63000 Clermont-Ferrand', 1900, 1),
(17, 'Magasin Nancy', 'Magasin', 'France', '14 Rue Saint-Jean, 54000 Nancy', 110, 1),
(18, 'Usine de Production Orléans', 'Usine', 'France', '5 Rue du Faubourg, 45000 Orléans', 300, 0);

-- 7. TABLE Carte (18 lignes) avec références aux paquets et extensions existants
-- On utilise des noms de Pokémon réels
INSERT INTO Carte (c_id, c_pos_serie, c_type, c_nom, c_langue, c_rarete, c_PV, c_resistance, c_faiblesse, c_texte_effet, c_date_sortie, c_statut, c_id_provient_de, paquet_code_SKU, ext_id) VALUES
(1, 1, 'Plante', 'Bulbizarre', 'Français', 'Commune', 60, 'Eau', 'Feu', 'Graine étrange. Au début du combat, lance une pièce : si face, le Pokémon Actif adverse est Empoisonné.', '2020-02-07', 1, NULL, 'PKM-BST-001', 1),
(2, 2, 'Plante', 'Herbizarre', 'Français', 'Peu commune', 80, 'Eau', 'Feu', 'Évolue de Bulbizarre. Sa fleur dégage un parfum apaisant.', '2020-02-07', 1, 1, 'PKM-BST-001', 1),
(3, 3, 'Plante', 'Florizarre', 'Français', 'Rare', 150, 'Eau', 'Feu', 'Peut utiliser Lame de Roc en plus de ses attaques.', '2020-02-07', 1, 2, 'PKM-BST-001', 1),
(4, 4, 'Feu', 'Salamèche', 'Français', 'Commune', 50, 'Aucune', 'Eau', 'Lance une flamme à la queue. Si la flamme s’éteint, il meurt.', '2020-02-07', 1, NULL, 'PKM-BST-001', 1),
(5, 5, 'Feu', 'Reptincel', 'Français', 'Peu commune', 80, 'Aucune', 'Eau', 'Sa queue brûle plus fort avant un combat.', '2020-02-07', 1, 4, 'PKM-BST-002', 1),
(6, 6, 'Feu', 'Dracaufeu', 'Français', 'Ultra Rare', 170, 'Aucune', 'Eau', 'Peut voler et cracher des flammes à plus de 1400°C.', '2020-02-07', 1, 5, 'PKM-BST-002', 1),
(7, 7, 'Eau', 'Carapuce', 'Français', 'Commune', 60, 'Aucune', 'Électrique', 'Se réfugie dans sa carapace pour se protéger.', '2020-02-07', 1, NULL, 'PKM-BST-002', 1),
(8, 8, 'Eau', 'Tortank', 'Français', 'Rare', 160, 'Aucune', 'Électrique', 'Ses canons d’eau peuvent percer l’acier.', '2020-02-07', 1, 7, 'PKM-BST-003', 1),
(9, 25, 'Électrik', 'Pikachu', 'Français', 'Rare', 70, 'Aucune', 'Sol', 'Stocke l’électricité dans ses joues.', '2023-03-31', 1, NULL, 'PKM-BST-004', 4),
(10, 26, 'Électrik', 'Raichu', 'Français', 'Peu commune', 110, 'Aucune', 'Sol', 'Sa queue agit comme un paratonnerre.', '2023-03-31', 1, 9, 'PKM-BST-004', 4),
(11, 150, 'Psy', 'Mewtwo', 'Français', 'Ultra Rare', 130, 'Combat', 'Ténèbres', 'Créé par manipulation génétique, il est doté de pouvoirs psychiques dévastateurs.', '2023-08-11', 1, NULL, 'PKM-BST-005', 5),
(12, 151, 'Psy', 'Mew', 'Français', 'Rare', 70, 'Aucune', 'Ténèbres', 'Il contient l’ADN de tous les Pokémon.', '2023-08-11', 1, NULL, 'PKM-BST-005', 5),
(13, 196, 'Psy', 'Mentali', 'Français', 'Rare', 90, 'Aucune', 'Ténèbres', 'L’anneau de son front palpite quand il utilise ses pouvoirs.', '2024-05-24', 1, NULL, 'PKM-BST-006', 6),
(14, 197, 'Ténèbres', 'Noctali', 'Français', 'Rare', 100, 'Psy', 'Fée', 'Il se cache dans l’obscurité pour attendre sa proie.', '2024-05-24', 1, NULL, 'PKM-BST-006', 6),
(15, 133, 'Incolore', 'Évoli', 'Français', 'Commune', 60, 'Aucune', 'Combat', 'Code génétique instable, il évolue selon l’environnement.', '2023-03-31', 1, NULL, 'PKM-ETB-001', 4),
(16, 134, 'Eau', 'Aquali', 'Français', 'Peu commune', 120, 'Aucune', 'Électrique', 'Sa nageoire fond dans l’eau, le rendant difficile à repérer.', '2023-03-31', 1, 15, 'PKM-ETB-001', 4),
(17, 135, 'Électrik', 'Voltali', 'Français', 'Peu commune', 100, 'Acier', 'Sol', 'Ses poils hérissés lancent des étincelles.', '2023-03-31', 1, 15, 'PKM-ETB-001', 4),
(18, 136, 'Feu', 'Pyroli', 'Français', 'Peu commune', 110, 'Aucune', 'Eau', 'Il emmagasine la chaleur dans son corps pour atteindre 900°C.', '2023-03-31', 1, 15, 'PKM-ETB-001', 4);

-- 8. TABLE Possede (18 associations carte-attaque)
-- On associe chaque carte à une ou plusieurs attaques (18 lignes au total)
INSERT INTO Possede (c_id, atk_id) VALUES
(1, 6),   -- Bulbizarre : Tranch'Herbe
(1, 12),  -- Bulbizarre : Fouet Lianes
(2, 6),   -- Herbizarre : Tranch'Herbe
(2, 12),  -- Herbizarre : Fouet Lianes
(3, 3),   -- Florizarre : Lance-Soleil
(3, 6),   -- Florizarre : Tranch'Herbe
(4, 1),   -- Salamèche : Flamme
(4, 2),   -- Salamèche : Charge
(5, 1),   -- Reptincel : Flamme
(5, 9),   -- Reptincel : Lance-Flammes
(6, 9),   -- Dracaufeu : Lance-Flammes
(6, 13),  -- Dracaufeu : Piqué
(7, 4),   -- Carapuce : Pistolet à O
(7, 2),   -- Carapuce : Charge
(8, 10),  -- Tortank : Hydrocanon
(8, 4),   -- Tortank : Pistolet à O
(9, 5),   -- Pikachu : Éclair
(9, 14);  -- Pikachu : Vive-Attaque
-- On a 18 lignes, mais on peut ajouter d'autres si besoin (on est à 18 normalement)
-- Vérifions : on a (1,2) deux fois pour 1, (2,2) pour 2, (3,2) pour 3, (4,2) pour 4, (5,2) pour 5, (6,2) pour 6, (7,2) pour 7, (8,2) pour 8, (9,2) pour 9 = 18 lignes ? Comptons :
-- Lignes : 1-6, 1-12, 2-6, 2-12, 3-3, 3-6, 4-1, 4-2, 5-1, 5-9, 6-9, 6-13, 7-4, 7-2, 8-10, 8-4, 9-5, 9-14 => 18 lignes exactement.

-- 9. TABLE A_dessine (18 associations carte-illustrateur)
-- Chaque carte est associée à un illustrateur (certains illustrateurs peuvent avoir plusieurs cartes)
INSERT INTO A_dessine (c_id, ill_ID) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 4),
(7, 5),
(8, 5),
(9, 6),
(10, 6),
(11, 7),
(12, 8),
(13, 9),
(14, 10),
(15, 11),
(16, 12),
(17, 13),
(18, 14);

-- 10. TABLE Distribue (18 associations paquet-livraison-lieu)
-- On crée 18 combinaisons uniques
INSERT INTO Distribue (paquet_code_SKU, livraison_numero_suivi, lieu_ID) VALUES
('PKM-BST-001', 'TRK123456789FR', 1),
('PKM-BST-002', 'TRK987654321FR', 2),
('PKM-BST-003', 'TRK456789123FR', 3),
('PKM-ETB-001', 'TRK321654987FR', 4),
('PKM-ETB-002', 'TRK789123456FR', 5),
('PKM-BOX-001', 'TRK147258369FR', 6),
('PKM-BOX-002', 'TRK258369147FR', 7),
('PKM-DECK-001', 'TRK369147258FR', 8),
('PKM-DECK-002', 'TRK159753486FR', 9),
('PKM-TIN-001', 'TRK753486159FR', 10),
('PKM-TIN-002', 'TRK486159753FR', 11),
('PKM-BST-004', 'TRK951753852FR', 12),
('PKM-BST-005', 'TRK852741963FR', 13),
('PKM-ETB-003', 'TRK741963852FR', 14),
('PKM-BOX-003', 'TRK963852741FR', 15),
('PKM-DECK-003', 'TRK321123654FR', 16),
('PKM-TIN-003', 'TRK654789321FR', 17),
('PKM-BST-006', 'TRK789321654FR', 18);