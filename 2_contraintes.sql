ALTER TABLE Attaque
ADD CONSTRAINT chk_puissance_positive
CHECK (atk_puissance >= 0);

ALTER TABLE Attaque
ADD CONSTRAINT chk_cout_energie
CHECK (atk_cout_energie >= 0);

ALTER TABLE Paquet
ADD CONSTRAINT chk_prix_paquet
CHECK (paquet_prix_reference > 0);

ALTER TABLE Extension
ADD CONSTRAINT chk_generation
CHECK (ext_generation > 0);

ALTER TABLE Carte
ADD CONSTRAINT chk_PV
CHECK (c_PV >= 0);

ALTER TABLE Lieu
ADD CONSTRAINT chk_stock
CHECK (lieu_stocks_paquets >= 0);

ALTER TABLE Livraison
ADD CONSTRAINT chk_dates_livraison
CHECK (livraison_date_reception_prevue >= livraison_date_expedition);