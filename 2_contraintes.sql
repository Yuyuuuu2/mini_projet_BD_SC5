ALTER TABLE Attaque
ADD CONSTRAINT chk_puissance_positive CHECK (atk_puissance >= 0),
ADD CONSTRAINT chk_cout_energie_positive CHECK (atk_cout_energie >= 0);

ALTER TABLE Paquet
ADD CONSTRAINT chk_prix_reference_positive CHECK (paquet_prix_reference > 0);

ALTER TABLE Carte
ADD CONSTRAINT chk_PV_positive CHECK (c_PV >= 0);

ALTER TABLE Lieu
ADD CONSTRAINT chk_stock_positive CHECK (lieu_stocks_paquets >= 0);
ADD CONSTRAINT chk_lieu_type
CHECK (lieu_type IN ('Entrepôt', 'Usine', 'Magasin'));

ALTER TABLE Livraison
ADD CONSTRAINT chk_dates_livraison CHECK (livraison_date_reception_prevue >= livraison_date_expedition);

